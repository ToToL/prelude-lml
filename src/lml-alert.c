/*****
*
* Copyright (C) 1998 - 2003 Yoann Vandoorselaere <yoann@prelude-ids.org>
* All Rights Reserved
*
* This file is part of the Prelude program.
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by 
* the Free Software Foundation; either version 2, or (at your option)
* any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; see the file COPYING.  If not, write to
* the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
*
*****/

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <inttypes.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/utsname.h>
#include <sys/time.h>
#include <time.h>
#include <netdb.h>
#include <assert.h>

#include <libprelude/list.h>
#include <libprelude/common.h>
#include <libprelude/prelude-log.h>
#include <libprelude/idmef.h>
#include <libprelude/prelude-io.h>
#include <libprelude/prelude-message.h>
#include <libprelude/prelude-message-buffered.h>
#include <libprelude/idmef-message-send.h>
#include <libprelude/prelude-io.h>
#include <libprelude/prelude-message.h>
#include <libprelude/sensor.h>
#include <libprelude/prelude-inet.h>

#include "log-common.h"
#include "lml-alert.h"
#include "config.h"


static prelude_msgbuf_t *msgbuf;
static idmef_analyzer_t *lml_analyzer;

#define ANALYZER_CLASS "HIDS"
#define ANALYZER_MODEL "Prelude LML"
#define ANALYZER_MANUFACTURER "The Prelude Team http://www.prelude-ids.org"



static idmef_analyzer_t *generate_analyzer(void) 
{
	idmef_analyzer_t *analyzer;
	idmef_string_t *string;

	analyzer = idmef_analyzer_new();
	if ( ! analyzer )
		return NULL;

        prelude_analyzer_fill_infos(analyzer);

	string = idmef_analyzer_new_model(analyzer);
	idmef_string_set_constant(string, ANALYZER_MODEL);

	string = idmef_analyzer_new_class(analyzer);
	idmef_string_set_constant(string, ANALYZER_CLASS);

	string = idmef_analyzer_new_manufacturer(analyzer);
	idmef_string_set_constant(string, ANALYZER_MANUFACTURER);

	string = idmef_analyzer_new_version(analyzer);
	idmef_string_set_constant(string, VERSION);

	return analyzer;
}



static void send_heartbeat_cb(void *data) 
{
        idmef_message_t *message;
        idmef_heartbeat_t *heartbeat;
	idmef_time_t *create_time;
        
        message = idmef_message_new();
        if ( ! message )
                return;

        heartbeat = idmef_message_new_heartbeat(message);
	if ( ! message ) {
		idmef_message_destroy(message);
		return;
	}

	idmef_heartbeat_set_analyzer(heartbeat, idmef_analyzer_ref(lml_analyzer));

	create_time = idmef_time_new_gettimeofday();
	if ( ! create_time ) {
		idmef_message_destroy(message);
		return;
	}

	idmef_heartbeat_set_create_time(heartbeat, create_time);

	idmef_send_message(msgbuf, message);

	idmef_message_destroy(message);
}



static int resolve_failed_fallback(const log_container_t *log, idmef_node_t *node) 
{
        int ret;
        idmef_address_t *address;
	idmef_string_t *string;
        
        /*
         * we want to know if it's an ip address or an hostname.
         */
        ret = inet_addr(log->target_hostname);
        if ( ret < 0 ) {
                /*
                 * hostname.
                 */
		string = idmef_node_new_name(node);
		idmef_string_set_ref(string, log->target_hostname);

        } else {
                address = idmef_node_new_address(node);
                if ( ! address ) 
                        return -1;

                string = idmef_address_new_address(address);
		idmef_string_set_ref(string, log->target_hostname);
        }

        return 0;
}




static int fill_target(idmef_node_t *node, prelude_addrinfo_t *ai) 
{
        char str[128];
        void *in_addr;
        idmef_address_t *addr;
	idmef_string_t *string;

        while ( ai ) {

                if ( ai->ai_flags & AI_CANONNAME ) {
			string = idmef_node_new_name(node);
			if ( idmef_string_set_dup(string, ai->ai_canonname) < 0 )
				return -1;
		}
                
                addr = idmef_node_new_address(node);
                if ( ! addr )
                        return -1;

                in_addr = prelude_inet_sockaddr_get_inaddr(ai->ai_addr);
                assert(in_addr);

		idmef_address_set_category(addr,
					   (ai->ai_family == AF_INET) ? ipv4_addr : ipv6_addr);
                
                if ( ! prelude_inet_ntop(ai->ai_family, in_addr, str, sizeof(str)) ) {
                        log(LOG_ERR, "inet_ntop returned an error.\n");
                        return -1;
                }

		string = idmef_address_new_address(addr);
		if ( idmef_string_set_dup(string, str) < 0 )
			return -1;

                ai = ai->ai_next;
        }

        return 0;
}



static int generate_target(const log_container_t *log, idmef_alert_t *alert) 
{
        int ret;
        idmef_user_t *user;
        idmef_node_t *node;
        idmef_userid_t *userid;
        idmef_target_t *target;
        idmef_process_t *process;
	idmef_string_t *process_name;
        
        target = idmef_alert_new_target(alert);
        if ( ! target ) 
                return -1;

        if ( log->target_user ) {
                user = idmef_target_new_user(target);
                if ( ! user )
                        return -1;

                userid = idmef_user_new_userid(user);
                if ( ! userid )
                        return -1;
                
                idmef_string_set_ref(idmef_userid_new_name(userid), log->target_user);
        }
        
        if ( log->target_program ) {
                process = idmef_target_new_process(target);
                if ( ! process )
                        return -1;

		process_name = idmef_process_new_name(process);
		idmef_string_set_ref(process_name, log->target_program);
        }

        if ( log->target_hostname ) {
                prelude_addrinfo_t *ai, hints;
                
                node = idmef_target_new_node(target);
                if ( ! node ) 
                        return -1;

                memset(&hints, 0, sizeof(hints));
                hints.ai_flags = AI_CANONNAME;
                hints.ai_socktype = SOCK_STREAM;

                /* This function conforms to getaddrinfo(3), not a general calling convention in libprelude */
                ret = prelude_inet_getaddrinfo(log->target_hostname, NULL, &hints, &ai);
                if ( ret != 0 ) {
                        log(LOG_ERR, "error resolving \"%s\": %s.\n", log->target_hostname, prelude_inet_gai_strerror(ret));
                        return resolve_failed_fallback(log, node);
                }

                fill_target(node, ai);

                prelude_inet_freeaddrinfo(ai);
        }

        return 0;
}



static int generate_additional_data(idmef_alert_t *alert, const char *meaning, const char *data)
{
	idmef_additional_data_t *adata;
	idmef_string_t *adata_meaning;
	idmef_data_t *adata_data;

        adata = idmef_alert_new_additional_data(alert);
        if ( ! adata )
		return -1;

	adata_meaning = idmef_additional_data_new_meaning(adata);
	idmef_string_set_ref(adata_meaning, meaning);

	idmef_additional_data_set_type(adata, string);

	adata_data = idmef_additional_data_new_data(adata);
	idmef_data_set_ref(adata_data, data, strlen(data) + 1);

	return 0;
}



void lml_emit_alert(const log_container_t *log, idmef_message_t *message, uint8_t priority)
{
        idmef_alert_t *alert;
	idmef_time_t *create_time;
	idmef_time_t *detect_time;

	alert = idmef_message_get_alert(message);

	create_time = idmef_time_new_gettimeofday();
	if ( ! create_time )
		goto error;

	idmef_alert_set_create_time(alert, create_time);
        
        detect_time = idmef_alert_new_detect_time(alert);
	if ( ! detect_time )
		goto error;

	idmef_time_set_sec(detect_time, log->tv.tv_sec);
	idmef_time_set_usec(detect_time, log->tv.tv_usec);

        if ( log->target_hostname || log->target_program ) {
                if ( generate_target(log, alert) < 0 )
			goto error;
        }

	idmef_alert_set_analyzer(alert, idmef_analyzer_ref(lml_analyzer));

        /*
         *
         */
	if ( generate_additional_data(alert, "Log received from", log->source) < 0 )
		goto error;

        /*
         *
         */
        if ( log->log )
		if ( generate_additional_data(alert, "Original Log", log->log) < 0 )
			goto error;
        
        /*
         *
         */
        
        idmef_send_message(msgbuf, message);
        prelude_msgbuf_mark_end(msgbuf);
        
 error:
        idmef_message_destroy(message);
}




int lml_alert_init(void) 
{        
        msgbuf = prelude_msgbuf_new(0);
        if ( ! msgbuf ) {
                log(LOG_ERR, "couldn't create a message stream.\n");
                return -1;
        }

	lml_analyzer = generate_analyzer();
	if ( ! lml_analyzer ) {
		prelude_msgbuf_close(msgbuf);
		return -1;
	}

        prelude_heartbeat_register_cb(send_heartbeat_cb, NULL);

        return 0;
}

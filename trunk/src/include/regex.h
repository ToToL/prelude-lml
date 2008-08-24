/*****
*
* Copyright (C) 2003, 2004, 2005 PreludeIDS Technologies. All Rights Reserved.
* Author: Yoann Vandoorselaere <yoann.v@prelude-ids.com>
*
* This file is part of the Prelude-LML program.
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

#ifndef REGEX_H
#define REGEX_H

#include <limits.h>
#include <pcre.h>

typedef prelude_list_t regex_list_t;

regex_list_t *regex_init(const char *logfile);

void regex_destroy(regex_list_t *conf);

int regex_exec(regex_list_t *list,
               void (*cb)(void *plugin, void *data), void *data,
               const char *str, size_t len);

#endif				/* REGEX_H */

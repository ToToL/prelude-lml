#ifndef LOG_COMMON_H
#define LOG_COMMON_H

#include <sys/time.h>

typedef struct log_source_s log_source_t;


typedef struct {
        char *log;        
        struct timeval tv;

        char *target_user;
        char *target_program;
        char *target_hostname;

        log_source_t *source;
} log_entry_t;



log_entry_t *log_entry_new(log_source_t *source);

int log_entry_set_log(log_entry_t *lc, const char *entry);

void log_entry_delete(log_entry_t *lc);


log_source_t *log_source_new(void);

void log_source_destroy(log_source_t *source);

const char *log_source_get_format(log_source_t *ls);

const char *log_source_get_source(log_source_t *ls);

const char *log_source_get_name(log_source_t *ls);

int log_source_set_name(log_source_t *ls, const char *name);

int log_source_set_log_fmt(log_source_t *ls, const char *fmt);

int log_source_set_timestamp_fmt(log_source_t *lf, const char *fmt);

#endif

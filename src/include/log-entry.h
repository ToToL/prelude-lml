/*****
*
* Copyright (C) 2003, 2004 Yoann Vandoorselaere <yoann@prelude-ids.org>
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

#ifndef _LOG_ENTRY_H
#define _LOG_ENTRY_H

#include "prelude-lml.h"
#include "log-source.h"

lml_log_entry_t *lml_log_entry_new(void);

int lml_log_entry_set_log(lml_log_entry_t *lc, lml_log_source_t *ls, const char *entry, size_t size);

void lml_log_entry_destroy(lml_log_entry_t *lc);

#endif /* _LOG_ENTRY_H */
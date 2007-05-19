# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2004-2007 Free Software Foundation, Inc.
#
# This file is free software, distributed under the terms of the GNU
# General Public License.  As a special exception to the GNU General
# Public License, this file may be distributed as part of a program
# that contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects using CVS, this file can be treated like other built files.


# This macro should be invoked from ./configure.in, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable
  AC_REQUIRE([AC_PROG_RANLIB])
  AC_REQUIRE([AC_GNU_SOURCE])
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
])

# This macro should be invoked from ./configure.in, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_source_base='libmissing'
changequote(,)dnl
LTALLOCA=`echo "$ALLOCA" | sed 's/\.[^.]* /.lo /g;s/\.[^.]*$/.lo/'`
changequote([, ])dnl
AC_SUBST([LTALLOCA])
  gl_FUNC_ALLOCA
  gl_HEADER_ARPA_INET
  AC_PROG_MKDIR_P
  gl_CHECK_TYPE_STRUCT_DIRENT_D_TYPE
  # No macro. You should also use one of fnmatch-posix or fnmatch-gnu.
  gl_GETADDRINFO
  gl_GETLOGIN_R
  gl_UNISTD_MODULE_INDICATOR([getlogin_r])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  gl_GLOB
  gl_INET_NTOP
  gl_FUNC_MEMPCPY
  gl_STRING_MODULE_INDICATOR([mempcpy])
  gl_FUNC_MEMSET
  gl_FUNC_MKTIME
  gl_HEADER_NETINET_IN
  AC_PROG_MKDIR_P
  gl_SIZE_MAX
  gl_FUNC_SNPRINTF
  gl_STDIO_MODULE_INDICATOR([snprintf])
  gl_TYPE_SOCKLEN_T
  AM_STDBOOL_H
  gl_STDINT_H
  gl_STDIO_H
  gl_FUNC_STRDUP
  gl_STRING_MODULE_INDICATOR([strdup])
  gl_HEADER_STRING_H
  gl_HEADER_SYS_SOCKET
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_STAT_H
  AC_PROG_MKDIR_P
  gl_HEADER_TIME_H
  gl_TIME_R
  gl_UNISTD_H
  gl_FUNC_VASNPRINTF
  gl_WCHAR_H
  gl_WCTYPE_H
  gl_XSIZE
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ],
  [gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS],
  [AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])])

# Like AC_LIBSOURCES, except that it does nothing.
# We rely on EXTRA_lib..._SOURCES instead.
AC_DEFUN([gl_LIBSOURCES],
  [])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/link-warning.h
  lib/alloca.c
  lib/alloca_.h
  lib/asnprintf.c
  lib/dummy.c
  lib/float+.h
  lib/fnmatch.c
  lib/fnmatch_.h
  lib/fnmatch_loop.c
  lib/gai_strerror.c
  lib/getaddrinfo.c
  lib/getaddrinfo.h
  lib/getlogin_r.c
  lib/gettext.h
  lib/glob-libc.h
  lib/glob.c
  lib/glob_.h
  lib/inet_ntop.c
  lib/inet_ntop.h
  lib/mempcpy.c
  lib/memset.c
  lib/mktime.c
  lib/netinet_in_.h
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/size_max.h
  lib/snprintf.c
  lib/stdbool_.h
  lib/stdint_.h
  lib/stdio_.h
  lib/strdup.c
  lib/string_.h
  lib/sys_socket_.h
  lib/sys_stat_.h
  lib/time_.h
  lib/time_r.c
  lib/unistd_.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/wchar_.h
  lib/wctype_.h
  lib/xsize.h
  m4/absolute-header.m4
  m4/alloca.m4
  m4/arpa_inet_h.m4
  m4/d-type.m4
  m4/eoverflow.m4
  m4/extensions.m4
  m4/fnmatch.m4
  m4/getaddrinfo.m4
  m4/getlogin_r.m4
  m4/glob.m4
  m4/gnulib-common.m4
  m4/inet_ntop.m4
  m4/intmax_t.m4
  m4/inttypes_h.m4
  m4/longlong.m4
  m4/mbstate_t.m4
  m4/mempcpy.m4
  m4/memset.m4
  m4/mktime.m4
  m4/netinet_in_h.m4
  m4/onceonly_2_57.m4
  m4/size_max.m4
  m4/snprintf.m4
  m4/socklen.m4
  m4/sockpfaf.m4
  m4/stdbool.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/strdup.m4
  m4/string_h.m4
  m4/sys_socket_h.m4
  m4/sys_stat_h.m4
  m4/time_h.m4
  m4/time_r.m4
  m4/ulonglong.m4
  m4/unistd_h.m4
  m4/vasnprintf.m4
  m4/wchar.m4
  m4/wchar_t.m4
  m4/wctype.m4
  m4/wint_t.m4
  m4/xsize.m4
])

# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2016 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.in, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  # Code from module absolute-header:
  # Code from module alloca:
  # Code from module alloca-opt:
  # Code from module alloca-opt-tests:
  # Code from module arpa_inet:
  # Code from module arpa_inet-tests:
  # Code from module binary-io:
  # Code from module binary-io-tests:
  # Code from module bind:
  # Code from module bind-tests:
  # Code from module btowc:
  # Code from module btowc-tests:
  # Code from module c-ctype:
  # Code from module c-ctype-tests:
  # Code from module c-strcase:
  # Code from module c-strcase-tests:
  # Code from module close:
  # Code from module close-tests:
  # Code from module closedir:
  # Code from module configmake:
  # Code from module ctype:
  # Code from module ctype-tests:
  # Code from module d-type:
  # Code from module dirent:
  # Code from module dirent-tests:
  # Code from module dirfd:
  # Code from module environ:
  # Code from module environ-tests:
  # Code from module errno:
  # Code from module errno-tests:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module fcntl-h:
  # Code from module fcntl-h-tests:
  # Code from module fd-hook:
  # Code from module fdopen:
  # Code from module fdopen-tests:
  # Code from module fgetc-tests:
  # Code from module filename:
  # Code from module float:
  # Code from module float-tests:
  # Code from module fnmatch:
  # Code from module fnmatch-tests:
  # Code from module fpieee:
  AC_REQUIRE([gl_FP_IEEE])
  # Code from module fpucw:
  # Code from module fputc-tests:
  # Code from module fread-tests:
  # Code from module fseek:
  # Code from module fseek-tests:
  # Code from module fseeko:
  AC_REQUIRE([AC_FUNC_FSEEKO])
  # Code from module fseeko-tests:
  # Code from module fstat:
  # Code from module fstat-tests:
  # Code from module ftell:
  # Code from module ftell-tests:
  # Code from module ftello:
  AC_REQUIRE([AC_FUNC_FSEEKO])
  # Code from module ftello-tests:
  # Code from module fwrite-tests:
  # Code from module getaddrinfo:
  # Code from module getaddrinfo-tests:
  # Code from module getlogin_r:
  # Code from module getlogin_r-tests:
  # Code from module getpagesize:
  # Code from module getpeername:
  # Code from module getpeername-tests:
  # Code from module gettext-h:
  # Code from module gettimeofday:
  # Code from module gettimeofday-tests:
  # Code from module glob:
  # Code from module glob-tests:
  # Code from module hard-locale:
  # Code from module havelib:
  # Code from module hostent:
  # Code from module iconv:
  # Code from module iconv-tests:
  # Code from module imaxabs:
  # Code from module imaxabs-tests:
  # Code from module include_next:
  # Code from module inet_ntop:
  # Code from module inet_ntop-tests:
  # Code from module inet_pton:
  # Code from module inet_pton-tests:
  # Code from module intprops:
  # Code from module intprops-tests:
  # Code from module inttypes:
  # Code from module inttypes-incomplete:
  # Code from module inttypes-tests:
  # Code from module ioctl:
  # Code from module ioctl-tests:
  # Code from module langinfo:
  # Code from module langinfo-tests:
  # Code from module largefile:
  AC_REQUIRE([AC_SYS_LARGEFILE])
  # Code from module localcharset:
  # Code from module locale:
  # Code from module locale-tests:
  # Code from module localeconv:
  # Code from module localeconv-tests:
  # Code from module localename:
  # Code from module localename-tests:
  # Code from module lock:
  # Code from module lock-tests:
  # Code from module lseek:
  # Code from module lseek-tests:
  # Code from module malloc-posix:
  # Code from module malloca:
  # Code from module malloca-tests:
  # Code from module mbrtowc:
  # Code from module mbrtowc-tests:
  # Code from module mbsinit:
  # Code from module mbsinit-tests:
  # Code from module mbsrtowcs:
  # Code from module mbsrtowcs-tests:
  # Code from module mbtowc:
  # Code from module memchr:
  # Code from module memchr-tests:
  # Code from module mempcpy:
  # Code from module mktime:
  # Code from module msvc-inval:
  # Code from module msvc-nothrow:
  # Code from module multiarch:
  # Code from module netdb:
  # Code from module netdb-tests:
  # Code from module netinet_in:
  # Code from module netinet_in-tests:
  # Code from module nl_langinfo:
  # Code from module nl_langinfo-tests:
  # Code from module opendir:
  # Code from module pathmax:
  # Code from module pathmax-tests:
  # Code from module putenv:
  # Code from module raise:
  # Code from module raise-tests:
  # Code from module readdir:
  # Code from module realloc-posix:
  # Code from module recvfrom:
  # Code from module recvfrom-tests:
  # Code from module servent:
  # Code from module setenv:
  # Code from module setenv-tests:
  # Code from module setlocale:
  # Code from module setlocale-tests:
  # Code from module sigaction:
  # Code from module sigaction-tests:
  # Code from module signal-h:
  # Code from module signal-h-tests:
  # Code from module sigprocmask:
  # Code from module sigprocmask-tests:
  # Code from module size_max:
  # Code from module sleep:
  # Code from module sleep-tests:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module snprintf:
  # Code from module snprintf-tests:
  # Code from module socket:
  # Code from module socketlib:
  # Code from module sockets:
  # Code from module sockets-tests:
  # Code from module socklen:
  # Code from module ssize_t:
  # Code from module stdalign:
  # Code from module stdalign-tests:
  # Code from module stdbool:
  # Code from module stdbool-tests:
  # Code from module stddef:
  # Code from module stddef-tests:
  # Code from module stdint:
  # Code from module stdint-tests:
  # Code from module stdio:
  # Code from module stdio-tests:
  # Code from module stdlib:
  # Code from module stdlib-tests:
  # Code from module strcase:
  # Code from module streq:
  # Code from module strerror:
  # Code from module strerror-override:
  # Code from module strerror-tests:
  # Code from module string:
  # Code from module string-tests:
  # Code from module strings:
  # Code from module strings-tests:
  # Code from module strnlen1:
  # Code from module strptime:
  # Code from module strsep:
  # Code from module sys_ioctl:
  # Code from module sys_ioctl-tests:
  # Code from module sys_select:
  # Code from module sys_select-tests:
  # Code from module sys_socket:
  # Code from module sys_socket-tests:
  # Code from module sys_stat:
  # Code from module sys_stat-tests:
  # Code from module sys_time:
  # Code from module sys_time-tests:
  # Code from module sys_types:
  # Code from module sys_types-tests:
  # Code from module sys_uio:
  # Code from module sys_uio-tests:
  # Code from module test-framework-sh:
  # Code from module test-framework-sh-tests:
  # Code from module thread:
  # Code from module thread-tests:
  # Code from module threadlib:
  gl_THREADLIB_EARLY
  # Code from module time:
  # Code from module time-tests:
  # Code from module time_r:
  # Code from module unistd:
  # Code from module unistd-tests:
  # Code from module unsetenv:
  # Code from module unsetenv-tests:
  # Code from module vasnprintf:
  # Code from module vasnprintf-tests:
  # Code from module verify:
  # Code from module verify-tests:
  # Code from module wchar:
  # Code from module wchar-tests:
  # Code from module wcrtomb:
  # Code from module wcrtomb-tests:
  # Code from module wctob:
  # Code from module wctomb:
  # Code from module wctype-h:
  # Code from module wctype-h-tests:
  # Code from module xsize:
  # Code from module yield:
])

# This macro should be invoked from ./configure.in, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_m4_base='libmissing/m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='libmissing'
changequote(,)dnl
LTALLOCA=`echo "$ALLOCA" | sed -e 's/\.[^.]* /.lo /g;s/\.[^.]*$/.lo/'`
changequote([, ])dnl
AC_SUBST([LTALLOCA])
  gl_FUNC_ALLOCA
  gl_HEADER_ARPA_INET
  AC_PROG_MKDIR_P
  AC_REQUIRE([gl_HEADER_SYS_SOCKET])
  if test "$ac_cv_header_winsock2_h" = yes; then
    AC_LIBOBJ([bind])
  fi
  gl_SYS_SOCKET_MODULE_INDICATOR([bind])
  gl_FUNC_CLOSE
  if test $REPLACE_CLOSE = 1; then
    AC_LIBOBJ([close])
  fi
  gl_UNISTD_MODULE_INDICATOR([close])
  gl_FUNC_CLOSEDIR
  if test $HAVE_CLOSEDIR = 0 || test $REPLACE_CLOSEDIR = 1; then
    AC_LIBOBJ([closedir])
  fi
  gl_DIRENT_MODULE_INDICATOR([closedir])
  gl_CONFIGMAKE_PREP
  gl_CHECK_TYPE_STRUCT_DIRENT_D_TYPE
  gl_DIRENT_H
  gl_FUNC_DIRFD
  if test $ac_cv_func_dirfd = no && test $gl_cv_func_dirfd_macro = no \
     || test $REPLACE_DIRFD = 1; then
    AC_LIBOBJ([dirfd])
    gl_PREREQ_DIRFD
  fi
  gl_DIRENT_MODULE_INDICATOR([dirfd])
  gl_HEADER_ERRNO_H
  AC_REQUIRE([gl_EXTERN_INLINE])
  gl_FLOAT_H
  if test $REPLACE_FLOAT_LDBL = 1; then
    AC_LIBOBJ([float])
  fi
  if test $REPLACE_ITOLD = 1; then
    AC_LIBOBJ([itold])
  fi
  gl_FUNC_FNMATCH_POSIX
  if test -n "$FNMATCH_H"; then
    AC_LIBOBJ([fnmatch])
    gl_PREREQ_FNMATCH
  fi
  gl_FUNC_FSEEK
  if test $REPLACE_FSEEK = 1; then
    AC_LIBOBJ([fseek])
  fi
  gl_STDIO_MODULE_INDICATOR([fseek])
  gl_FUNC_FSEEKO
  if test $HAVE_FSEEKO = 0 || test $REPLACE_FSEEKO = 1; then
    AC_LIBOBJ([fseeko])
    gl_PREREQ_FSEEKO
  fi
  gl_STDIO_MODULE_INDICATOR([fseeko])
  gl_FUNC_FSTAT
  if test $REPLACE_FSTAT = 1; then
    AC_LIBOBJ([fstat])
    gl_PREREQ_FSTAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([fstat])
  gl_FUNC_FTELL
  if test $REPLACE_FTELL = 1; then
    AC_LIBOBJ([ftell])
  fi
  gl_STDIO_MODULE_INDICATOR([ftell])
  gl_FUNC_FTELLO
  if test $HAVE_FTELLO = 0 || test $REPLACE_FTELLO = 1; then
    AC_LIBOBJ([ftello])
    gl_PREREQ_FTELLO
  fi
  gl_STDIO_MODULE_INDICATOR([ftello])
  gl_GETADDRINFO
  if test $HAVE_GETADDRINFO = 0; then
    AC_LIBOBJ([getaddrinfo])
  fi
  if test $HAVE_DECL_GAI_STRERROR = 0 || test $REPLACE_GAI_STRERROR = 1; then
    AC_LIBOBJ([gai_strerror])
  fi
  gl_NETDB_MODULE_INDICATOR([getaddrinfo])
  gl_FUNC_GETLOGIN_R
  if test $HAVE_GETLOGIN_R = 0 || test $REPLACE_GETLOGIN_R = 1; then
    AC_LIBOBJ([getlogin_r])
    gl_PREREQ_GETLOGIN_R
  fi
  gl_UNISTD_MODULE_INDICATOR([getlogin_r])
  AC_REQUIRE([gl_HEADER_SYS_SOCKET])
  if test "$ac_cv_header_winsock2_h" = yes; then
    AC_LIBOBJ([getpeername])
  fi
  gl_SYS_SOCKET_MODULE_INDICATOR([getpeername])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  gl_FUNC_GETTIMEOFDAY
  if test $HAVE_GETTIMEOFDAY = 0 || test $REPLACE_GETTIMEOFDAY = 1; then
    AC_LIBOBJ([gettimeofday])
    gl_PREREQ_GETTIMEOFDAY
  fi
  gl_SYS_TIME_MODULE_INDICATOR([gettimeofday])
  gl_GLOB
  if test -n "$GLOB_H"; then
    AC_LIBOBJ([glob])
    gl_PREREQ_GLOB
  fi
  gl_HARD_LOCALE
  gl_HOSTENT
  AM_ICONV
  m4_ifdef([gl_ICONV_MODULE_INDICATOR],
    [gl_ICONV_MODULE_INDICATOR([iconv])])
  gl_FUNC_IMAXABS
  if test $ac_cv_func_imaxabs = no; then
    AC_LIBOBJ([imaxabs])
    gl_PREREQ_IMAXABS
  fi
  gl_INTTYPES_MODULE_INDICATOR([imaxabs])
  gl_FUNC_INET_NTOP
  if test $HAVE_INET_NTOP = 0 || test $REPLACE_INET_NTOP = 1; then
    AC_LIBOBJ([inet_ntop])
    gl_PREREQ_INET_NTOP
  fi
  gl_ARPA_INET_MODULE_INDICATOR([inet_ntop])
  gl_INTTYPES_INCOMPLETE
  gl_FUNC_IOCTL
  if test $HAVE_IOCTL = 0 || test $REPLACE_IOCTL = 1; then
    AC_LIBOBJ([ioctl])
  fi
  gl_SYS_IOCTL_MODULE_INDICATOR([ioctl])
  gl_LANGINFO_H
  AC_REQUIRE([gl_LARGEFILE])
  gl_LOCALCHARSET
  LOCALCHARSET_TESTS_ENVIRONMENT="CHARSETALIASDIR=\"\$(abs_top_builddir)/$gl_source_base\""
  AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
  gl_LOCALE_H
  gl_FUNC_LOCALECONV
  if test $REPLACE_LOCALECONV = 1; then
    AC_LIBOBJ([localeconv])
    gl_PREREQ_LOCALECONV
  fi
  gl_LOCALE_MODULE_INDICATOR([localeconv])
  gl_FUNC_LSEEK
  if test $REPLACE_LSEEK = 1; then
    AC_LIBOBJ([lseek])
  fi
  gl_UNISTD_MODULE_INDICATOR([lseek])
  gl_FUNC_MALLOC_POSIX
  if test $REPLACE_MALLOC = 1; then
    AC_LIBOBJ([malloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([malloc-posix])
  gl_FUNC_MBRTOWC
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    AC_LIBOBJ([mbrtowc])
    gl_PREREQ_MBRTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([mbrtowc])
  gl_FUNC_MBSINIT
  if test $HAVE_MBSINIT = 0 || test $REPLACE_MBSINIT = 1; then
    AC_LIBOBJ([mbsinit])
    gl_PREREQ_MBSINIT
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsinit])
  gl_FUNC_MBSRTOWCS
  if test $HAVE_MBSRTOWCS = 0 || test $REPLACE_MBSRTOWCS = 1; then
    AC_LIBOBJ([mbsrtowcs])
    AC_LIBOBJ([mbsrtowcs-state])
    gl_PREREQ_MBSRTOWCS
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsrtowcs])
  gl_FUNC_MEMCHR
  if test $HAVE_MEMCHR = 0 || test $REPLACE_MEMCHR = 1; then
    AC_LIBOBJ([memchr])
    gl_PREREQ_MEMCHR
  fi
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_FUNC_MEMPCPY
  if test $HAVE_MEMPCPY = 0; then
    AC_LIBOBJ([mempcpy])
    gl_PREREQ_MEMPCPY
  fi
  gl_STRING_MODULE_INDICATOR([mempcpy])
  gl_FUNC_MKTIME
  if test $REPLACE_MKTIME = 1; then
    AC_LIBOBJ([mktime])
    gl_PREREQ_MKTIME
  fi
  gl_TIME_MODULE_INDICATOR([mktime])
  AC_REQUIRE([gl_MSVC_INVAL])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-inval])
  fi
  AC_REQUIRE([gl_MSVC_NOTHROW])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-nothrow])
  fi
  gl_MULTIARCH
  gl_HEADER_NETDB
  gl_HEADER_NETINET_IN
  AC_PROG_MKDIR_P
  gl_FUNC_NL_LANGINFO
  if test $HAVE_NL_LANGINFO = 0 || test $REPLACE_NL_LANGINFO = 1; then
    AC_LIBOBJ([nl_langinfo])
  fi
  gl_LANGINFO_MODULE_INDICATOR([nl_langinfo])
  gl_FUNC_OPENDIR
  if test $HAVE_OPENDIR = 0 || test $REPLACE_OPENDIR = 1; then
    AC_LIBOBJ([opendir])
  fi
  gl_DIRENT_MODULE_INDICATOR([opendir])
  gl_PATHMAX
  gl_FUNC_RAISE
  if test $HAVE_RAISE = 0 || test $REPLACE_RAISE = 1; then
    AC_LIBOBJ([raise])
    gl_PREREQ_RAISE
  fi
  gl_SIGNAL_MODULE_INDICATOR([raise])
  gl_FUNC_READDIR
  if test $HAVE_READDIR = 0; then
    AC_LIBOBJ([readdir])
  fi
  gl_DIRENT_MODULE_INDICATOR([readdir])
  gl_FUNC_REALLOC_POSIX
  if test $REPLACE_REALLOC = 1; then
    AC_LIBOBJ([realloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([realloc-posix])
  AC_REQUIRE([gl_HEADER_SYS_SOCKET])
  if test "$ac_cv_header_winsock2_h" = yes; then
    AC_LIBOBJ([recvfrom])
  fi
  gl_SYS_SOCKET_MODULE_INDICATOR([recvfrom])
  gl_SERVENT
  gl_SIGACTION
  if test $HAVE_SIGACTION = 0; then
    AC_LIBOBJ([sigaction])
    gl_PREREQ_SIGACTION
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigaction])
  gl_SIGNAL_H
  gl_SIGNALBLOCKING
  if test $HAVE_POSIX_SIGNALBLOCKING = 0; then
    AC_LIBOBJ([sigprocmask])
    gl_PREREQ_SIGPROCMASK
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigprocmask])
  gl_SIZE_MAX
  gl_FUNC_SLEEP
  if test $HAVE_SLEEP = 0 || test $REPLACE_SLEEP = 1; then
    AC_LIBOBJ([sleep])
  fi
  gl_UNISTD_MODULE_INDICATOR([sleep])
  gl_FUNC_SNPRINTF
  gl_STDIO_MODULE_INDICATOR([snprintf])
  gl_MODULE_INDICATOR([snprintf])
  AC_REQUIRE([gl_HEADER_SYS_SOCKET])
  if test "$ac_cv_header_winsock2_h" = yes; then
    AC_LIBOBJ([socket])
  fi
  # When this module is used, sockets may actually occur as file descriptors,
  # hence it is worth warning if the modules 'close' and 'ioctl' are not used.
  m4_ifdef([gl_UNISTD_H_DEFAULTS], [AC_REQUIRE([gl_UNISTD_H_DEFAULTS])])
  m4_ifdef([gl_SYS_IOCTL_H_DEFAULTS], [AC_REQUIRE([gl_SYS_IOCTL_H_DEFAULTS])])
  AC_REQUIRE([gl_PREREQ_SYS_H_WINSOCK2])
  if test "$ac_cv_header_winsock2_h" = yes; then
    UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS=1
    SYS_IOCTL_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS=1
  fi
  gl_SYS_SOCKET_MODULE_INDICATOR([socket])
  AC_REQUIRE([gl_SOCKETLIB])
  AC_REQUIRE([gl_SOCKETS])
  gl_TYPE_SOCKLEN_T
  gt_TYPE_SSIZE_T
  gl_STDALIGN_H
  AM_STDBOOL_H
  gl_STDDEF_H
  gl_STDINT_H
  gl_STDIO_H
  gl_STDLIB_H
  gl_STRCASE
  if test $HAVE_STRCASECMP = 0; then
    AC_LIBOBJ([strcasecmp])
    gl_PREREQ_STRCASECMP
  fi
  if test $HAVE_STRNCASECMP = 0; then
    AC_LIBOBJ([strncasecmp])
    gl_PREREQ_STRNCASECMP
  fi
  gl_HEADER_STRING_H
  gl_HEADER_STRINGS_H
  gl_FUNC_STRPTIME
  if test $HAVE_STRPTIME = 0; then
    AC_LIBOBJ([strptime])
    gl_PREREQ_STRPTIME
  fi
  gl_TIME_MODULE_INDICATOR([strptime])
  gl_FUNC_STRSEP
  if test $HAVE_STRSEP = 0; then
    AC_LIBOBJ([strsep])
    gl_PREREQ_STRSEP
  fi
  gl_STRING_MODULE_INDICATOR([strsep])
  gl_SYS_IOCTL_H
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_SELECT
  AC_PROG_MKDIR_P
  AC_REQUIRE([gl_HEADER_SYS_SOCKET])
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_STAT_H
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_TIME_H
  AC_PROG_MKDIR_P
  gl_SYS_TYPES_H
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_UIO
  AC_PROG_MKDIR_P
  gl_HEADER_TIME_H
  gl_TIME_R
  if test $HAVE_LOCALTIME_R = 0 || test $REPLACE_LOCALTIME_R = 1; then
    AC_LIBOBJ([time_r])
    gl_PREREQ_TIME_R
  fi
  gl_TIME_MODULE_INDICATOR([time_r])
  gl_UNISTD_H
  gl_FUNC_VASNPRINTF
  gl_WCHAR_H
  gl_WCTYPE_H
  gl_XSIZE
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='libmissing/tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  gl_FUNC_BTOWC
  if test $HAVE_BTOWC = 0 || test $REPLACE_BTOWC = 1; then
    AC_LIBOBJ([btowc])
    gl_PREREQ_BTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([btowc])
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gt_LOCALE_FR
  gt_LOCALE_TR_UTF8
  gl_CTYPE_H
  gl_ENVIRON
  gl_UNISTD_MODULE_INDICATOR([environ])
  gl_FCNTL_H
  gl_FUNC_FDOPEN
  if test $REPLACE_FDOPEN = 1; then
    AC_LIBOBJ([fdopen])
    gl_PREREQ_FDOPEN
  fi
  gl_STDIO_MODULE_INDICATOR([fdopen])
  gl_FUNC_UNGETC_WORKS
  gl_FUNC_UNGETC_WORKS
  gl_FUNC_UNGETC_WORKS
  gl_FUNC_UNGETC_WORKS
  AC_CHECK_FUNCS_ONCE([ttyname])
  gl_FUNC_GETPAGESIZE
  if test $REPLACE_GETPAGESIZE = 1; then
    AC_LIBOBJ([getpagesize])
  fi
  gl_UNISTD_MODULE_INDICATOR([getpagesize])
  AC_C_BIGENDIAN
  gl_FUNC_INET_PTON
  if test $HAVE_INET_PTON = 0 || test $REPLACE_INET_NTOP = 1; then
    AC_LIBOBJ([inet_pton])
    gl_PREREQ_INET_PTON
  fi
  gl_ARPA_INET_MODULE_INDICATOR([inet_pton])
  AC_C_BIGENDIAN
  gl_INTTYPES_H
  AC_CHECK_FUNCS_ONCE([newlocale])
  gl_LOCALENAME
  AC_CHECK_FUNCS_ONCE([newlocale])
  gl_LOCK
  gl_MODULE_INDICATOR([lock])
  gl_MALLOCA
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gt_LOCALE_JA
  gt_LOCALE_ZH_CN
  gt_LOCALE_FR_UTF8
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gt_LOCALE_JA
  gt_LOCALE_ZH_CN
  gl_FUNC_MBTOWC
  if test $REPLACE_MBTOWC = 1; then
    AC_LIBOBJ([mbtowc])
    gl_PREREQ_MBTOWC
  fi
  gl_STDLIB_MODULE_INDICATOR([mbtowc])
  dnl Check for prerequisites for memory fence checks.
  gl_FUNC_MMAP_ANON
  AC_CHECK_HEADERS_ONCE([sys/mman.h])
  AC_CHECK_FUNCS_ONCE([mprotect])
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gl_FUNC_PUTENV
  if test $REPLACE_PUTENV = 1; then
    AC_LIBOBJ([putenv])
    gl_PREREQ_PUTENV
  fi
  gl_STDLIB_MODULE_INDICATOR([putenv])
  gl_FUNC_SETENV
  if test $HAVE_SETENV = 0 || test $REPLACE_SETENV = 1; then
    AC_LIBOBJ([setenv])
  fi
  gl_STDLIB_MODULE_INDICATOR([setenv])
  gl_FUNC_SETLOCALE
  if test $REPLACE_SETLOCALE = 1; then
    AC_LIBOBJ([setlocale])
    gl_PREREQ_SETLOCALE
  fi
  gl_LOCALE_MODULE_INDICATOR([setlocale])
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gt_LOCALE_JA
  gt_LOCALE_ZH_CN
  AC_CHECK_DECLS_ONCE([alarm])
  AC_REQUIRE([gt_TYPE_WCHAR_T])
  AC_REQUIRE([gt_TYPE_WINT_T])
  gl_FUNC_STRERROR
  if test $REPLACE_STRERROR = 1; then
    AC_LIBOBJ([strerror])
  fi
  gl_MODULE_INDICATOR([strerror])
  gl_STRING_MODULE_INDICATOR([strerror])
  AC_REQUIRE([gl_HEADER_ERRNO_H])
  AC_REQUIRE([gl_FUNC_STRERROR_0])
  if test -n "$ERRNO_H" || test $REPLACE_STRERROR_0 = 1; then
    AC_LIBOBJ([strerror-override])
    gl_PREREQ_SYS_H_WINSOCK2
  fi
  AC_CHECK_FUNCS_ONCE([shutdown])
  gl_THREAD
  gl_THREADLIB
  gl_FUNC_UNSETENV
  if test $HAVE_UNSETENV = 0 || test $REPLACE_UNSETENV = 1; then
    AC_LIBOBJ([unsetenv])
    gl_PREREQ_UNSETENV
  fi
  gl_STDLIB_MODULE_INDICATOR([unsetenv])
  gl_FUNC_WCRTOMB
  if test $HAVE_WCRTOMB = 0 || test $REPLACE_WCRTOMB = 1; then
    AC_LIBOBJ([wcrtomb])
    gl_PREREQ_WCRTOMB
  fi
  gl_WCHAR_MODULE_INDICATOR([wcrtomb])
  gt_LOCALE_FR
  gt_LOCALE_FR_UTF8
  gt_LOCALE_JA
  gt_LOCALE_ZH_CN
  gl_FUNC_WCTOB
  if test $HAVE_WCTOB = 0 || test $REPLACE_WCTOB = 1; then
    AC_LIBOBJ([wctob])
    gl_PREREQ_WCTOB
  fi
  gl_WCHAR_MODULE_INDICATOR([wctob])
  gl_FUNC_WCTOMB
  if test $REPLACE_WCTOMB = 1; then
    AC_LIBOBJ([wctomb])
    gl_PREREQ_WCTOMB
  fi
  gl_STDLIB_MODULE_INDICATOR([wctomb])
  gl_YIELD
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
  LIBTESTS_LIBDEPS="$gltests_libdeps"
  AC_SUBST([LIBTESTS_LIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [libmissing])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [libmissing/tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/config.rpath
  build-aux/snippet/_Noreturn.h
  build-aux/snippet/arg-nonnull.h
  build-aux/snippet/c++defs.h
  build-aux/snippet/warn-on-use.h
  lib/alloca.c
  lib/alloca.in.h
  lib/arpa_inet.in.h
  lib/asnprintf.c
  lib/bind.c
  lib/close.c
  lib/closedir.c
  lib/config.charset
  lib/dirent-private.h
  lib/dirent.in.h
  lib/dirfd.c
  lib/errno.in.h
  lib/fd-hook.c
  lib/fd-hook.h
  lib/filename.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/fnmatch.c
  lib/fnmatch.in.h
  lib/fnmatch_loop.c
  lib/fseek.c
  lib/fseeko.c
  lib/fstat.c
  lib/ftell.c
  lib/ftello.c
  lib/gai_strerror.c
  lib/getaddrinfo.c
  lib/getlogin_r.c
  lib/getpeername.c
  lib/gettext.h
  lib/gettimeofday.c
  lib/glob-libc.h
  lib/glob.c
  lib/glob.in.h
  lib/hard-locale.c
  lib/hard-locale.h
  lib/imaxabs.c
  lib/inet_ntop.c
  lib/intprops.h
  lib/inttypes.in.h
  lib/ioctl.c
  lib/itold.c
  lib/langinfo.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/locale.in.h
  lib/localeconv.c
  lib/lseek.c
  lib/malloc.c
  lib/mbrtowc.c
  lib/mbsinit.c
  lib/mbsrtowcs-impl.h
  lib/mbsrtowcs-state.c
  lib/mbsrtowcs.c
  lib/memchr.c
  lib/memchr.valgrind
  lib/mempcpy.c
  lib/mktime-internal.h
  lib/mktime.c
  lib/msvc-inval.c
  lib/msvc-inval.h
  lib/msvc-nothrow.c
  lib/msvc-nothrow.h
  lib/netdb.in.h
  lib/netinet_in.in.h
  lib/nl_langinfo.c
  lib/opendir.c
  lib/pathmax.h
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/raise.c
  lib/readdir.c
  lib/realloc.c
  lib/recvfrom.c
  lib/ref-add.sin
  lib/ref-del.sin
  lib/sig-handler.c
  lib/sig-handler.h
  lib/sigaction.c
  lib/signal.in.h
  lib/sigprocmask.c
  lib/size_max.h
  lib/sleep.c
  lib/snprintf.c
  lib/socket.c
  lib/sockets.c
  lib/sockets.h
  lib/stdalign.in.h
  lib/stdbool.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio-impl.h
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/strcasecmp.c
  lib/streq.h
  lib/string.in.h
  lib/strings.in.h
  lib/strncasecmp.c
  lib/strnlen1.c
  lib/strnlen1.h
  lib/strptime.c
  lib/strsep.c
  lib/sys_ioctl.in.h
  lib/sys_select.in.h
  lib/sys_socket.c
  lib/sys_socket.in.h
  lib/sys_stat.in.h
  lib/sys_time.in.h
  lib/sys_types.in.h
  lib/sys_uio.in.h
  lib/time.in.h
  lib/time_r.c
  lib/unistd.c
  lib/unistd.in.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/verify.h
  lib/w32sock.h
  lib/wchar.in.h
  lib/wctype-h.c
  lib/wctype.in.h
  lib/xsize.c
  lib/xsize.h
  m4/00gnulib.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/arpa_inet_h.m4
  m4/btowc.m4
  m4/close.m4
  m4/closedir.m4
  m4/codeset.m4
  m4/configmake.m4
  m4/ctype.m4
  m4/d-type.m4
  m4/dirent_h.m4
  m4/dirfd.m4
  m4/eealloc.m4
  m4/environ.m4
  m4/errno_h.m4
  m4/exponentd.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/fcntl-o.m4
  m4/fcntl_h.m4
  m4/fdopen.m4
  m4/float_h.m4
  m4/fnmatch.m4
  m4/fpieee.m4
  m4/fseek.m4
  m4/fseeko.m4
  m4/fstat.m4
  m4/ftell.m4
  m4/ftello.m4
  m4/getaddrinfo.m4
  m4/getlogin_r.m4
  m4/getpagesize.m4
  m4/gettimeofday.m4
  m4/glibc21.m4
  m4/glob.m4
  m4/gnulib-common.m4
  m4/hard-locale.m4
  m4/hostent.m4
  m4/iconv.m4
  m4/imaxabs.m4
  m4/include_next.m4
  m4/inet_ntop.m4
  m4/inet_pton.m4
  m4/intlmacosx.m4
  m4/intmax_t.m4
  m4/inttypes-pri.m4
  m4/inttypes.m4
  m4/inttypes_h.m4
  m4/ioctl.m4
  m4/langinfo_h.m4
  m4/largefile.m4
  m4/lcmessage.m4
  m4/lib-ld.m4
  m4/lib-link.m4
  m4/lib-prefix.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-tr.m4
  m4/locale-zh.m4
  m4/locale_h.m4
  m4/localeconv.m4
  m4/localename.m4
  m4/lock.m4
  m4/longlong.m4
  m4/lseek.m4
  m4/malloc.m4
  m4/malloca.m4
  m4/math_h.m4
  m4/mbrtowc.m4
  m4/mbsinit.m4
  m4/mbsrtowcs.m4
  m4/mbstate_t.m4
  m4/mbtowc.m4
  m4/memchr.m4
  m4/mempcpy.m4
  m4/mktime.m4
  m4/mmap-anon.m4
  m4/msvc-inval.m4
  m4/msvc-nothrow.m4
  m4/multiarch.m4
  m4/netdb_h.m4
  m4/netinet_in_h.m4
  m4/nl_langinfo.m4
  m4/off_t.m4
  m4/onceonly.m4
  m4/opendir.m4
  m4/pathmax.m4
  m4/printf.m4
  m4/putenv.m4
  m4/raise.m4
  m4/readdir.m4
  m4/realloc.m4
  m4/servent.m4
  m4/setenv.m4
  m4/setlocale.m4
  m4/sigaction.m4
  m4/signal_h.m4
  m4/signalblocking.m4
  m4/size_max.m4
  m4/sleep.m4
  m4/snprintf.m4
  m4/socketlib.m4
  m4/sockets.m4
  m4/socklen.m4
  m4/sockpfaf.m4
  m4/ssize_t.m4
  m4/stdalign.m4
  m4/stdbool.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/strcase.m4
  m4/strerror.m4
  m4/string_h.m4
  m4/strings_h.m4
  m4/strptime.m4
  m4/strsep.m4
  m4/sys_ioctl_h.m4
  m4/sys_select_h.m4
  m4/sys_socket_h.m4
  m4/sys_stat_h.m4
  m4/sys_time_h.m4
  m4/sys_types_h.m4
  m4/sys_uio_h.m4
  m4/thread.m4
  m4/threadlib.m4
  m4/time_h.m4
  m4/time_r.m4
  m4/tm_gmtoff.m4
  m4/ungetc.m4
  m4/unistd_h.m4
  m4/vasnprintf.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wcrtomb.m4
  m4/wctob.m4
  m4/wctomb.m4
  m4/wctype_h.m4
  m4/wint_t.m4
  m4/xsize.m4
  m4/yield.m4
  tests/init.sh
  tests/macros.h
  tests/signature.h
  tests/test-alloca-opt.c
  tests/test-arpa_inet.c
  tests/test-binary-io.c
  tests/test-binary-io.sh
  tests/test-bind.c
  tests/test-btowc.c
  tests/test-btowc1.sh
  tests/test-btowc2.sh
  tests/test-c-ctype.c
  tests/test-c-strcase.sh
  tests/test-c-strcasecmp.c
  tests/test-c-strncasecmp.c
  tests/test-close.c
  tests/test-ctype.c
  tests/test-dirent.c
  tests/test-environ.c
  tests/test-errno.c
  tests/test-fcntl-h.c
  tests/test-fdopen.c
  tests/test-fgetc.c
  tests/test-float.c
  tests/test-fnmatch.c
  tests/test-fputc.c
  tests/test-fread.c
  tests/test-fseek.c
  tests/test-fseek.sh
  tests/test-fseek2.sh
  tests/test-fseeko.c
  tests/test-fseeko.sh
  tests/test-fseeko2.sh
  tests/test-fseeko3.c
  tests/test-fseeko3.sh
  tests/test-fseeko4.c
  tests/test-fseeko4.sh
  tests/test-fstat.c
  tests/test-ftell.c
  tests/test-ftell.sh
  tests/test-ftell2.sh
  tests/test-ftell3.c
  tests/test-ftello.c
  tests/test-ftello.sh
  tests/test-ftello2.sh
  tests/test-ftello3.c
  tests/test-ftello4.c
  tests/test-ftello4.sh
  tests/test-fwrite.c
  tests/test-getaddrinfo.c
  tests/test-getlogin_r.c
  tests/test-getpeername.c
  tests/test-gettimeofday.c
  tests/test-glob.c
  tests/test-iconv.c
  tests/test-imaxabs.c
  tests/test-inet_ntop.c
  tests/test-inet_pton.c
  tests/test-init.sh
  tests/test-intprops.c
  tests/test-inttypes.c
  tests/test-ioctl.c
  tests/test-langinfo.c
  tests/test-locale.c
  tests/test-localeconv.c
  tests/test-localename.c
  tests/test-lock.c
  tests/test-lseek.c
  tests/test-lseek.sh
  tests/test-malloca.c
  tests/test-mbrtowc-w32-1.sh
  tests/test-mbrtowc-w32-2.sh
  tests/test-mbrtowc-w32-3.sh
  tests/test-mbrtowc-w32-4.sh
  tests/test-mbrtowc-w32-5.sh
  tests/test-mbrtowc-w32.c
  tests/test-mbrtowc.c
  tests/test-mbrtowc1.sh
  tests/test-mbrtowc2.sh
  tests/test-mbrtowc3.sh
  tests/test-mbrtowc4.sh
  tests/test-mbrtowc5.sh
  tests/test-mbsinit.c
  tests/test-mbsinit.sh
  tests/test-mbsrtowcs.c
  tests/test-mbsrtowcs1.sh
  tests/test-mbsrtowcs2.sh
  tests/test-mbsrtowcs3.sh
  tests/test-mbsrtowcs4.sh
  tests/test-memchr.c
  tests/test-netdb.c
  tests/test-netinet_in.c
  tests/test-nl_langinfo.c
  tests/test-nl_langinfo.sh
  tests/test-pathmax.c
  tests/test-raise.c
  tests/test-recvfrom.c
  tests/test-setenv.c
  tests/test-setlocale1.c
  tests/test-setlocale1.sh
  tests/test-setlocale2.c
  tests/test-setlocale2.sh
  tests/test-sigaction.c
  tests/test-signal-h.c
  tests/test-sigprocmask.c
  tests/test-sleep.c
  tests/test-snprintf.c
  tests/test-sockets.c
  tests/test-stdalign.c
  tests/test-stdbool.c
  tests/test-stddef.c
  tests/test-stdint.c
  tests/test-stdio.c
  tests/test-stdlib.c
  tests/test-strerror.c
  tests/test-string.c
  tests/test-strings.c
  tests/test-sys_ioctl.c
  tests/test-sys_select.c
  tests/test-sys_socket.c
  tests/test-sys_stat.c
  tests/test-sys_time.c
  tests/test-sys_types.c
  tests/test-sys_uio.c
  tests/test-sys_wait.h
  tests/test-thread_create.c
  tests/test-thread_self.c
  tests/test-time.c
  tests/test-unistd.c
  tests/test-unsetenv.c
  tests/test-vasnprintf.c
  tests/test-verify.c
  tests/test-verify.sh
  tests/test-wchar.c
  tests/test-wcrtomb-w32-1.sh
  tests/test-wcrtomb-w32-2.sh
  tests/test-wcrtomb-w32-3.sh
  tests/test-wcrtomb-w32-4.sh
  tests/test-wcrtomb-w32-5.sh
  tests/test-wcrtomb-w32.c
  tests/test-wcrtomb.c
  tests/test-wcrtomb.sh
  tests/test-wctype-h.c
  tests/zerosize-ptr.h
  tests=lib/binary-io.c
  tests=lib/binary-io.h
  tests=lib/btowc.c
  tests=lib/c-ctype.c
  tests=lib/c-ctype.h
  tests=lib/c-strcase.h
  tests=lib/c-strcasecmp.c
  tests=lib/c-strncasecmp.c
  tests=lib/ctype.in.h
  tests=lib/fcntl.in.h
  tests=lib/fdopen.c
  tests=lib/fpucw.h
  tests=lib/getpagesize.c
  tests=lib/glthread/lock.c
  tests=lib/glthread/lock.h
  tests=lib/glthread/thread.c
  tests=lib/glthread/thread.h
  tests=lib/glthread/threadlib.c
  tests=lib/glthread/yield.h
  tests=lib/inet_pton.c
  tests=lib/localename.c
  tests=lib/localename.h
  tests=lib/malloca.c
  tests=lib/malloca.h
  tests=lib/malloca.valgrind
  tests=lib/mbtowc-impl.h
  tests=lib/mbtowc.c
  tests=lib/putenv.c
  tests=lib/setenv.c
  tests=lib/setlocale.c
  tests=lib/strerror-override.c
  tests=lib/strerror-override.h
  tests=lib/strerror.c
  tests=lib/unsetenv.c
  tests=lib/wcrtomb.c
  tests=lib/wctob.c
  tests=lib/wctomb-impl.h
  tests=lib/wctomb.c
])

dnl Process this file with autoconf to produce a configure script.

AC_INIT(prelude-lml, 3.1.0rc1)

AC_PREREQ(2.59)
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([-Wall tar-pax 1.9])
AM_CONFIG_HEADER(config.h)
AC_CONFIG_MACRO_DIR([m4])
AM_DISABLE_STATIC

AM_MAINTAINER_MODE


dnl **********************************************************
dnl * Check required program.
dnl **********************************************************

AC_PROG_CC
gl_EARLY

AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PATH_PROG(GREP, grep, no)
m4_ifdef([AM_PROG_AR], [AM_PROG_AR])



dnl **********************************************************
dnl * Setup GnuLib, libtool and libltdl.
dnl **********************************************************

dnl Provide replacement for system missing this GnuLib required macro.
m4_ifndef([AS_VAR_COPY], [m4_define([AS_VAR_COPY], 
       [AS_LITERAL_IF([$1[]$2], [$1=$$2], [eval $1=\$$2])])]) 

AC_LIBTOOL_DLOPEN
AM_DISABLE_STATIC
AC_PROG_LIBTOOL


dnl **************************************************
dnl * Check for missing function replacement         *
dnl **************************************************

gl_SOURCE_BASE(libmissing)
gl_M4_BASE(libmissing/m4)
gl_INIT

dnl **************************************************
dnl * Typedefs, structures, compiler characteristics.*
dnl **************************************************

AC_C_CONST
AC_TYPE_UID_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_HEADER_TIME
AC_TYPE_SIGNAL
AC_C_INLINE
AC_SYS_LARGEFILE
AC_CHECK_HEADERS_ONCE(sys/filio.h)



dnl **************************************************
dnl * Setup custom compiler flags                    *
dnl **************************************************

AC_MSG_CHECKING(for platform-specific compiler flags)
case "$host_os" in
 darwin*)
        # It may be called "cc", but it's really a GCC derivative
        # with a problematic special precompiler and precompiled
        # headers; turn off the special precompiler, as some
        # apparently-legal code won't compile with its precompiled
        # headers.
        AC_MSG_RESULT(Darwin: adding -no-cpp-precomp)
        AX_CHECK_COMPILE_FLAG(-no-cpp-precomp, GLOBAL_CFLAGS="$GLOBAL_CFLAGS -no-cpp-precomp")
        ;;
 *)
        AC_MSG_RESULT(none needed)
        ;;
esac

AX_CHECK_LINK_FLAG(-z relro, LDFLAGS="$LDFLAGS -z relro")
AX_CHECK_LINK_FLAG(-z now, LDFLAGS="$LDFLAGS -z now")

for i in -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations \
         -Wbad-function-cast -Wcast-qual -Wcast-align -Wnested-externs -Wunused \
         -Wformat -Wformat-security; do
        AX_CHECK_COMPILE_FLAG($i, GLOBAL_CFLAGS="$GLOBAL_CFLAGS $i")
done


dnl **************************************************
dnl * Check for libprelude                           *
dnl **************************************************

AM_PATH_LIBPRELUDE(3.0.0, ,
  AC_MSG_ERROR(Cannot find libprelude: Is libprelude-config in the path?), false)


dnl **************************************************
dnl * Check for GnuTLS.                              *
dnl **************************************************
GNUTLS_MIN_VERSION=1.0.17

PKG_CHECK_MODULES([LIBGNUTLS], [gnutls >= $GNUTLS_MIN_VERSION], [],
                  [AM_PATH_LIBGNUTLS($GNUTLS_MIN_VERSION, enable_gnutls=yes, enable_gnutls=no)])

AC_CHECK_HEADER(gnutls/gnutls.h, enable_gnutls=yes, enable_gnutls=no)

if test x$enable_gnutls = xyes; then
        AC_DEFINE_UNQUOTED(HAVE_GNUTLS, , Tell whether GnuTLS is available for TCP-TLS support)
	AC_CHECK_LIB(gnutls, gnutls_hash_get_len,
             AC_DEFINE_UNQUOTED(HAVE_GNUTLS_HASH_GET_LEN, , Define whether GnuTLS provides gnutls_hash_get_len function,))
fi

AM_CONDITIONAL(HAVE_GNUTLS, test x$enable_gnutls = xyes)


dnl **************************************************
dnl * Check for libICU                               *
dnl **************************************************

PKG_CHECK_MODULES([ICU], [icu >= 3.0], [enable_icu=yes],
                  [AC_CHECK_ICU(3.8, enable_icu=yes, enable_icu=no)])
if test x$enable_icu = xyes; then
        AC_DEFINE_UNQUOTED(HAVE_LIBICU, , Tell whether libicu is available for encoding convertion)
fi


dnl **************************************************
dnl * Check for PCRE                                 *
dnl **************************************************

AC_PATH_PROG(PCRE_CONFIG, pcre-config, no)

if test x$PCRE_CONFIG = xno; then
   AC_MSG_ERROR(PCRE 4.1 or higher is required to build Prelude-LML. Get it from http://www.pcre.org .)
fi

PCRE_LIBS=`$PCRE_CONFIG --libs`
PCRE_CFLAGS=`$PCRE_CONFIG --cflags`

LIBS_bkp=$LIBS
LIBS="$LIBS $PCRE_LIBS"

CPPFLAGS_bkp=$CPPFLAGS
CPPFLAGS="$CPPFLAGS $PCRE_CFLAGS"

AC_CHECK_LIB(pcre, pcre_get_named_substring, ,
 AC_MSG_ERROR(PCRE 4.1 or higher is required to build Prelude-LML. Get it from http://www.pcre.org .)
)

LIBS=$LIBS_bkp
CPPFLAGS=$CPPFLAGS_bkp

AC_SUBST(PCRE_LIBS)
AC_SUBST(PCRE_CFLAGS)


dnl ********************************************************
dnl * Configure embedded libev                             *
dnl ********************************************************

AC_DEFINE_UNQUOTED(EV_PERIODIC_ENABLE, 0, Disable unused libev periodic timers)
AC_DEFINE_UNQUOTED(EV_IDLE_ENABLE, 0, Disable unused libev idle watchers)
AC_DEFINE_UNQUOTED(EV_FORK_ENABLE, 0, Disable unused libev fork watchers)
AC_DEFINE_UNQUOTED(EV_EMBED_ENABLE, 0, Disable unused libev embed watchers)
AC_DEFINE_UNQUOTED(EV_MULTIPLICITY, 0, Disable support for multiple libev event loop)

m4_include([libev/libev.m4])


dnl **************************************************
dnl * Setup build variable                           *
dnl **************************************************

AS_AC_EXPAND(LIBDIR, $libdir)
AS_AC_EXPAND(DATADIR, $datadir)
AS_AC_EXPAND(SYSCONFDIR, $sysconfdir)
AS_AC_EXPAND(LOCALSTATEDIR, $localstatedir)

configdir=$SYSCONFDIR/prelude-lml
prelude_lml_conf=$configdir/prelude-lml.conf
regex_conf=$configdir/plugins.rules
metadata_dir=$LOCALSTATEDIR/lib/prelude-lml
plugindir=$LIBDIR/prelude-lml
lml_run_dir=$LOCALSTATEDIR/run/prelude-lml

AC_DEFINE_UNQUOTED(PRELUDE_LML_CONF, "$prelude_lml_conf", Path to the LML configuration file)
AC_DEFINE_UNQUOTED(LOG_PLUGIN_DIR, "$plugindir", Prelude-LML report plugin directory)
AC_DEFINE_UNQUOTED(REGEX_CONF, "$regex_conf", Prelude-LML plugin regex configuration)
AC_DEFINE_UNQUOTED(METADATA_DIR, "$metadata_dir", Prelude-LML Metadata directory)
AC_DEFINE_UNQUOTED(LML_RUN_DIR, "$lml_run_dir", Prelude-LML run directory)

AC_SUBST(configdir)
AC_SUBST(metadata_dir)
AC_SUBST(localstatedir)
AC_SUBST(lml_run_dir)

AC_SUBST(GLOBAL_CFLAGS)


AC_CONFIG_FILES([

prelude-lml.conf
plugins.rules

Makefile
libev/Makefile
libmissing/Makefile
libmissing/tests/Makefile

m4/Makefile

src/Makefile
src/include/Makefile

plugins/Makefile

plugins/debug/Makefile

plugins/pcre/Makefile

tests/Makefile

])
AC_OUTPUT

echo
echo "*** Dumping configuration ***"
echo "    - Enable TLS support         : $enable_gnutls"
echo "    - Favor libICU over Iconv    : $enable_icu"

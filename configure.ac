AC_INIT([libunix_dbus_java], [0.8.0], [bruno@abstractj.org])
AC_CONFIG_MACRO_DIR([m4])

AM_INIT_AUTOMAKE([foreign dist-xz])
LT_INIT

AC_PROG_CC

JNI_CPPFLAGS="-I$JAVA_HOME/include/ -I$JAVA_HOME/include/linux/"
CPPFLAGS="$CPPFLAGS $JNI_CPPFLAGS"

AC_CHECK_HEADERS([jni.h], [], AC_MSG_ERROR([Native java headers not found. Is \$JAVA_HOME set correctly?]))
AC_SUBST([JNI_CPPFLAGS])

AC_OUTPUT([Makefile])

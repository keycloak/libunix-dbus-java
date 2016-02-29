#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([dbus-java-libunix], [0.8.0], [bruno@abstractj.org])
AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([src/libunix/unix-java.c])

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_MAKE_SET

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h sys/socket.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([select socket strerror])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

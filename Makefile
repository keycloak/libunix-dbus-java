JAVA_HOME=/usr/lib/jvm/java-current

help:
	@echo 'Makefile for dbus-java-libunix                                               '
	@echo '                                                                        '
	@echo 'Usage:                                                                  '
	@echo '   make jni-compile                 compile native C code               '
	@echo '   make clean                       remove generated shared library     '
	@echo '                                                                        '

unix-java.h:
	javah -o src/unix-java.h -cp src/ cx.ath.matthew.unix.UnixServerSocket cx.ath.matthew.unix.UnixSocket cx.ath.matthew.unix.USInputStream cx.ath.matthew.unix.USOutputStream

jni-compile: libunix-java.so

libunix-java.so:
	gcc -O3 -fPIC -shared -I$(JAVA_HOME)/include/ \
	-I$(JAVA_HOME)/include/linux/ \
	src/unix-java.c \
	-o libunix-java.so

clean:
	[ ! -f libunix-java.so ] || \
	rm libunix-java.so

.PHONY: clean java-compile jni-compile run help

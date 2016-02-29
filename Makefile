VERSION=0.8.0
DESTDIR=.

install: libunix-java.so

help:
	@echo 'Makefile for dbus-java-libunix                                               '
	@echo '                                                                        '
	@echo 'Usage:                                                                  '
	@echo '   make install                 compile native C code               '
	@echo '   make clean                       remove generated shared library     '
	@echo '                                                                        '

unix-java.h:
	javah -o unix-java.h -cp src/ cx.ath.matthew.unix.UnixServerSocket cx.ath.matthew.unix.UnixSocket cx.ath.matthew.unix.USInputStream cx.ath.matthew.unix.USOutputStream

libunix-java.so:
	gcc -O3 -fPIC -shared -I$(JAVA_HOME)/include/ \
	-I$(JAVA_HOME)/include/linux/ \
	unix-java.c \
	-o $(DESTDIR)/libunix-java.so

dist:
	mkdir -p dbus-java-libunix-$(VERSION)
	cp Makefile *.c *.h dbus-java-libunix-$(VERSION)
	tar -czvf dbus-java-libunix-$(VERSION).tar.gz dbus-java-libunix-$(VERSION)

clean:
	rm -f libunix-java.so \
	rm -f *.tar.gz

.PHONY: clean install help

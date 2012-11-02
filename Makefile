# CONFIGURE: the directory where you want the executables installed.
BINDIR =	/usr/bin

# CONFIGURE: the directory tree where you want the man pages installed.
MANDIR =	/usr/share/man

INSTALL =	ginstall

# CONFIGURE: your favorite C compiler.
CC =		gcc

# CONFIGURE: your favorite C flags.
CFLAGS =	-O

# CONFIGURE: your favorite linker flags.
LDFLAGS =	-s

all:		globe

globe:		globe.c
	$(CC) $(CFLAGS) globe.c $(LDFLAGS) -o globe

install:	all
	$(INSTALL) -D globe $(DESTDIR)$(BINDIR)/globe
	$(INSTALL) -D globe.1 $(DESTDIR)$(MANDIR)/man1/globe.1

clean:
	rm -f globe a.out core

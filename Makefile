PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man
DOCDIR ?= $(PREFIX)/share/doc/omisu

all:
	@echo Run \'make install\' to install omisu.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p omisu $(DESTDIR)$(PREFIX)/bin/omisu
	@cp -p omisu.1 $(DESTDIR)$(MANDIR)/man1
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/omisu

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/omisu
	@rm -rf $(DESTDIR)$(MANDIR)/man1/omisu.1
	@rm -rf $(DESTDIR)$(DOCDIR)

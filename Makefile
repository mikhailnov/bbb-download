#
PREFIX = /

all:
	@ echo "Nothing to compile. Use: make install, make uninstall"

install:
	install -d $(DESTDIR)/$(PREFIX)/var/www/bigbluebutton-default/download
	install -m0600 config $(DESTDIR)/$(PREFIX)/.ssh/config
	
uninstall:
	mv -v $(DESTDIR)/$(PREFIX)/.ssh/config $(DESTDIR)/$(PREFIX)/.ssh/config.bak || true
	

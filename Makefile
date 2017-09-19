prefix=/usr/local
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
datarootdir=$(prefix)/share
datadir=$(datarootdir)
mandir=$(datarootdir)/man

# files that need mode 755
EXEC_FILES=gimi-standup

.PHONY: all install uninstall

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	mkdir -p $(bindir)
	install -m 0755 git-standup $(bindir)
	install -m 0755 gimi-standup $(bindir)

uninstall:
	test -d $(bindir) && \
	cd $(bindir) && \
	rm -f git-standup &&\
	rm -f gimi-standup
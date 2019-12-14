all: help

help:
	echo "install - install files into \$$DESTDIR"

install:
	install -D qvm-screenshot-tool.sh $(DESTDIR)/usr/bin/qvm-screenshot-tool

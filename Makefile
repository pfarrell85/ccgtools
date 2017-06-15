
# Makefile for Creative Collisions Group Tools
# Copyright 2017 Creative Collisions Group, LLC J.Patrick Farrell

INSTALL_DIR=~/bin

install:
	mkdir -p ${INSTALL_DIR}
	cp -a bin/* ${INSTALL_DIR}
	make -C docker install
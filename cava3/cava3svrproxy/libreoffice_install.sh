#!/bin/sh

apt-get install -y libreoffice
cd /usr/bin
ln -s ../lib/libreoffice/program/soffice  libreoffice7.3

echo "install libreoffice7.3 ok."

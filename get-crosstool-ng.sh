#!/bin/bash
# Exit on first error
set -e
# Install prerequisites
sudo apt-get install gperf bison flex texinfo
# Create a temp dir
install -d ./tmp && cd tmp
# Get the crosstool-ng tarball
VERSION=1.20.0
wget http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-${VERSION}.tar.bz2
tar xjf crosstool-ng-${VERSION}.tar.bz2
cd crosstool-ng-${VERSION}
./configure --prefix=/opt/crosstool-ng
make
sudo make install
sudo cp ./ct-ng.comp /etc/bash_completion.d/
cd ../..
rm -rf ./tmp

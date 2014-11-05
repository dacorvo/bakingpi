#!/bin/bash
# Exit on first error
set -e
# create a temp dir
install -d tmp && cd tmp
# Set PATH
PATH=${PATH}:/opt/crosstool-ng/bin
# Select crosstool-ng rpi toolchain
ct-ng armv6-rpi-linux-gnueabi
# Build toolchain
ct-ng build
cd ..
# Cleanup
rm -rf ./tmp

#!/usr/bin/env bash

# Download the latest source code for JADE
git clone git@github.com:FieldSafe/jade.git tmp_jade

# Build the package
cd tmp_jade || return
./build

# Install the package
sudo dpkg -i .build/jade_*.deb

# Remove the source code
cd ..
rm -rf tmp_jade
#!/bin/bash
loc=`pwd`/bluray-x86
mkdir -p bluray-x86
cd libbluray
git apply --ignore-space-change -v ../libbluray.patch
autoreconf -vi
FLAGS=--disable-bdjava-jar
FLAGS+=' --enable-shared=no'
FLAGS+=' --enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
./configure $FLAGS PKG_CONFIG="pkg-config --static"
echo $?

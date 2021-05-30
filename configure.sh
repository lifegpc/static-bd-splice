#!/bin/bash
loc=`pwd`/bluray
mkdir -p bluray
cd libbluray
git apply --ignore-space-change libbluray.patch
autoreconf -vi
FLAGS=--disable-bdjava-jar
FLAGS+=' --enable-shared=no'
FLAGS+=' --enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
./configure $FLAGS PKG_CONFIG="pkg-config --static"
echo $?

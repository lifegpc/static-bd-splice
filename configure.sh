#!/bin/bash
git apply --ignore-space-change libbluray.patch
loc=`pwd`/bluray
mkdir -p bluray
cd libbluray
autoreconf -vi
FLAGS=--disable-bdjava-jar
FLAGS+=' --enable-shared=no'
FLAGS+=' --enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
./configure $FLAGS PKG_CONFIG="pkg-config --static"
echo $?

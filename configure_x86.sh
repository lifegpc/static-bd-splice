#!/bin/bash
loc=`pwd`/bluray-x86
mkdir -p bluray-x86
cd libbluray
autoreconf -vi
FLAGS=--enable-shared=no
FLAGS+=' ----enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
FLAGS+=' "PKG_CONFIG=pkg-config --static"'
./configure $FLAGS
echo $?

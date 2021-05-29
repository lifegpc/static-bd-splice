#!/bin/bash
loc=`pwd`/bluray
mkdir -p bluray
cd libbluray
autoreconf -vi
FLAGS=--enable-shared=no
FLAGS+=' ----enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
FLAGS+=' "PKG_CONFIG=pkg-config --static"'
./configure $FLAGS
echo $?
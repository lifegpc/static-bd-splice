#!/bin/bash
loc=`pwd`/bluray
mkdir -p bluray
cd libbluray
aclocal -I m4
libtoolize --copy --tag=CXX --mode=link g++ --all-static
aclocal -I m4
autoconf
autoheader
automake --add-missing --copy --no-force
FLAGS=--disable-bdjava-jar
FLAGS+=' --enable-shared=no'
FLAGS+=' --enable-static=yes'
FLAGS+=" --prefix=$loc"
FLAGS+=' LDFLAGS=-static'
./configure $FLAGS PKG_CONFIG="pkg-config --static"
echo $?

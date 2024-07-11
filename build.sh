#!/bin/bash

mkdir -p $SRC_DIR/docs/html

aclocal -I config
autoconf
autoheader
automake -a

./configure --prefix=$PREFIX --exec-prefix=$PREFIX --bindir=$PREFIX/bin

make -j${CPU_COUNT}
make install
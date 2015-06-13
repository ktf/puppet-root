#!/bin/sh -ex
cd $BUILDROOT
export ROOTSYS=$INSTALL_ROOT
./configure --prefix=$INSTALL_ROOT \
            --with-pythia6-uscore=SINGLE \
            --enable-minuit2 \
            --enable-roofit \
            --enable-soversion \
            --disable-bonjour \
            --enable-builtin-freetype \
            --with-clang \
            --with-f77=gfortran \
            --with-cc=gcc \
            --with-cxx=c++ \
            --with-ld=c++ \
            --disable-fink \
            --enable-cocoa \
            --prefix="$ROOTSYS" \
            --incdir="$ROOTSYS/include" \
            --libdir="$ROOTSYS/lib" \
            --datadir="$ROOTSYS" \
            --etcdir="$ROOTSYS/etc"  
#  --with-alien-incdir=$GSHELL_ROOT/include \
#  --with-alien-libdir=$GSHELL_ROOT/lib \
#  --with-monalisa-incdir="$GSHELL_ROOT/include" \
#  --with-monalisa-libdir="$GSHELL_ROOT/lib" \
#  --with-xrootd=$GSHELL_ROOT \

make -j 20
make install

#!/bin/sh

source ./env.sh
#source ./env_clang.sh

#cd speex-1.2rc1
cd libogg-1.3.0
#./configure -prefix=/Users/Ryan/Desktop/Speex/arm7 -host armv7-apple-darwin -build=x86_64-apple-darwin10.8.0 -with-ogg=/Users/Ryan/Desktop/Speex/libogg
# -isysroot "$SDK_ROOT/"
#./configure --host=armv7-apple-darwin --host=armv7-apple-darwin --build=x86_64-apple-darwin10.8.0 --enable-optimized --disable-debug --disable-expensive-checks --disable-doxygen --disable-threads --enable-targets=arm -with-ogg=/Users/Ryan/Desktop/Speex/libogg -std=c99
#export CC="$CC -std=c99 -arch armv7 -isysroot $SDK"

#./configure --prefix=/Users/ryan/speex/armv7 --host=armv7-apple-darwin -disable-shared -enable-static -disable-oggtest -enable-fixed-point -disable-float-api --with-ogg="/Users/ryan/Desktop/speex/libogg/libogg.a" --libdir=/Users/Ryan/Desktop/libspeex --build=armv7-apple-darwin

./configure --prefix=/Users/ryan/speex/armv7 --build=armv7-apple-darwin 

#--host=x86_64-apple-darwin10.8.0 
#-with-gnu-ld=yes

#    -build=x86_64-apple-darwin10.8.0 
#--target=armv7-apple-darwin 
#--build=i386-apple-darwin
make && make install

#!/bin/sh

#source ./env.shi

VERSION="1.3.0"
SDKVERSION="5.1"
LIB="libogg"

DEVELOPER=`xcode-select -print-path`
ARCHS="i386 armv6 armv7"
#ARCHS="armv6"
ARCHS='i386'
CURRENTPATH=`pwd`
BUILD="x86_64-apple-darwin11"
OLD_PATH=$PATH

cd ${LIB}-${VERSION}

for ARCH in ${ARCHS}
do
    if [ "${ARCH}" == "i386" ];
    then
        PLATFORM="iPhoneSimulator"
        HOST="i386-apple-darwin11"
    else
        PLATFORM="iPhoneOS"
        HOST="${ARCH}-apple-darwin11"
    fi

    SDK="${DEVELOPER}/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDKVERSION}.sdk"

    export CC="clang -arch ${ARCH} -isysroot ${SDK}"
    export CXXFLAGS="$CFLAGS"
    export LDFLAGS="$CFLAGS"
    export LD=$CC

    PREFIX="${CURRENTPATH}/build/${LIB}/${ARCH}"

    mkdir -p ${PREFIX}

    echo "Please stand by..."

    ./configure --prefix=$PREFIX --host=${HOST} -build=${BUILD} 

    make clean
    make && make install

    echo "======== CHECK ARCH ========"
    lipo -info ${PREFIX}/lib/${LIB}.a
    echo "======== CHECK DONE ========"

done

echo " == Copy headers to fat folder from i386 folder AND clean files in lib =="
cp -r ${CURRENTPATH}/build/${LIB}/i386/ ${CURRENTPATH}/build/${LIB}/Fat
rm -rf ${CURRENTPATH}/build/${LIB}/Fat/lib/*

echo "Build library..."
lipo -create ${CURRENTPATH}/build/${LIB}/i386/lib/${LIB}.a ${CURRENTPATH}/build/${LIB}/armv6/lib/${LIB}.a ${CURRENTPATH}/build/${LIB}/armv7/lib/${LIB}.a -output ${CURRENTPATH}/build/${LIB}/Fat/lib/${LIB}.a

echo "======== CHECK FAT ARCH ========"
lipo -info ${CURRENTPATH}/build/${LIB}/Fat/${LIB}.a
echo "======== CHECK DONE ========"

echo "== Done =="

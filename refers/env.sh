
#DEVELOPR_ROOT=/Applications/Xcode/Contents/Developer

SDK_VERSION=5.1

CURRENT_PATH=`pwd`
ARCHS="i386 armv6 armv7"
DEVELOPER=`xcode-select -print-path`

PLATFORM="iPhoneOS"

mkdir -p "${CURRENT_PATH}/src"
mkdir -p "${CURRENT_PATH}/bin"
mkdir -p "${CURRENT_PATH}/lib"


ARCH='armv7'

#DEVELOPR_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer

SDK=$DEVELOPR_ROOT/SDKs/iPhoneOS$SDK_VERSION.sdk

export CFLAGS="-isysroot ${DEVELOPER}/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDK_VERSION}.sdk"

export CC="${DEVELOPER}/Platforms/${PLATFORM}.platform/Developer/usr/bin/gcc -arch ${ARCH} ${CFLAGS}"
echo $CC
#export CC=$DEVELOPR_ROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-gcc-4.2
export CPP=$CC
#export CXX=$DEVELOPR_ROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-g++-4.2
export CXXCPP=$CXX
-isysroot $
#export gcc=$CC
#export g++=$CXX
#export CFLAGS="-isysroot ${DEVELOPR}SDKs/iPhoneOS$SDK_VERSION.sdk
echo $CFLAGS

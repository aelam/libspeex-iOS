
#DEVELOPR_ROOT=/Applications/Xcode/Contents/Developer

SDK_VERSION=5.1

DEVELOPR_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer

SDK=$DEVELOPR_ROOT/SDKs/iPhoneOS$SDK_VERSION.sdk


/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
#export CC=$DEVELOPR_ROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-gcc-4.2
export CC="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -arch armv7"
export CPP=$CC
export CXX=$CC
#$DEVELOPR_ROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-g++-4.2
export CXXCPP=$CXX

#export gcc=$CC
#export g++=$CXX
export CFLAGS=$DEVELOPR_ROOT/SDKs/iPhoneOS$SDK_VERSION.sdk

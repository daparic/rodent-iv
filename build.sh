#!/bin/sh
#

[ $# -eq 0 ] && return 1
[ -d $1 ] && return 2

BUILD_DIR=$1

VER=25.1.8937393

TOOLCHAIN_FILE=~/AppData/Local/Android/Sdk/ndk/$VER/build/cmake/android.toolchain.cmake
ANDROID_NDK_HOME=~/AppData/Local/Android/Sdk/ndk/$VER
ANDROID_HOME=~/AppData/Local/Android/Sdk
abi=arm64-v8a

ANDRO=/c/Users/dx/AppData/Local/Android/Sdk/cmake/3.22.1/bin

### $ANDRO/cmake -G "Ninja" \
###     -DCMAKE_BUILD_TYPE=Release \
###     -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
###     -DANDROID_NDK=$ANDROID_NDK_HOME \
###     -DANDROID_TOOLCHAIN=clang \
###     -DCMAKE_ANDROID_ARCH_ABI=$abi \
###     -DANDROID_ABI=$abi \
###     -DANDROID_LINKER_FLAGS="-landroid -llog" \
###     -DANDROID_NATIVE_API_LEVEL=35 \
###     -DANDROID_STL=c++_static \
###     -DANDROID_CPP_FEATURES="rtti exceptions" \
###     -B build -S .

$ANDRO/cmake -G "Ninja" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
    -DANDROID_NDK=$ANDROID_NDK_HOME \
    -DANDROID_TOOLCHAIN=clang \
    -DCMAKE_ANDROID_ARCH_ABI=$abi \
    -DANDROID_ABI=$abi \
    -DANDROID_NATIVE_API_LEVEL=25 \
    -B $BUILD_DIR -S .
 
cmake --build $BUILD_DIR
### $ANDROID_NDK_HOME/$VER/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-strip.exe --strip-unneeded $BUILD_DIR/milanovzki

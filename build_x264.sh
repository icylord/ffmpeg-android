#!/bin/bash

export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.6/prebuilt
export PLATFORM=$NDK/platforms/android-9/arch-arm 
export PREFIX=./android-x264
./configure --prefix=$PREFIX \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--host=arm-linux \
--cross-prefix=$PREBUILT/linux-x86_64/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM
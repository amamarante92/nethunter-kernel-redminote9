!/bin/bash

echo "Hi merlin user just wait and watch "

mkdir outM
export ARCH=arm64
export SUBARCH=arm64
export DTC_EXT=dtc
make O=outM ARCH=arm64 nethunter_defconfig
export PATH="${PWD}/clang-13/aaa/bin:${PATH}"
make -j$(nproc --all) O=outM \
                      ARCH=arm64 \
                      LD=${PWD}/clang-13/aaa/bin/ld.lld \
		       OBJCOPY=${PWD}/clang-13/aaa/bin/llvm-objcopy \
		       AS=${PWD}/clang-13/aaa/bin/llvm-as \
		       NM=${PWD}/clang-13/aaa/bin/llvm-nm \
		       STRIP=${PWD}/clang-13/aaa/bin/llvm-strip \
		       OBJDUMP=${PWD}/clang-13/aaa/bin/llvm-objdump \
		       READELF=${PWD}/clang-13/aaa/bin/llvm-readelf \
                      CC=${PWD}/clang-13/aaa/bin/clang \
                      CROSS_COMPILE=${PWD}/clang-13/aaa/bin/aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=${PWD}/clang-13/aaa/bin/arm-linux-gnueabi- 
bp=${PWD}/outM
DATE=$(date "+%Y%m%d-%H%M")
ZIPNAME="kali-nethunter-kernel-redminote9"
cd ${PWD}/AnyKernel3-master
rm *.zip *-dtb 
cp $bp/arch/arm64/boot/Image.gz-dtb .
zip -r9 "$ZIPNAME"-"${DATE}".zip *
cd - || exit

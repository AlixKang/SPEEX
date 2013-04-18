echo "start configuration";
WHOAMI=`whoami`
./configure --prefix=$HOME/Desktop/SPEEX$WHOAMI/libogg-1.3.0/armv6 -host=armv6-apple-darwin -build=x86_64-apple-darwin12.3.0 CC="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2 -std=c99 -arch armv6 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk/"

echo "end cnfiguration";
echo "start building";
make clean
make
make install
echo "end building";

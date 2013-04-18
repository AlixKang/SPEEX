echo "start configuration";
WHOAMI=`whoami`
./configure --prefix=$HOME/Desktop/SPEEX$WHOAMI/libogg-1.3.0/i386 -host=i386-apple-darwin -build=x86_64-apple-darwin12.3.0 CC="/Applications/Xcode.app/Contents/Developer/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2 -std=c99 -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.1.sdk/"

echo "end cnfiguration";
echo "start building";
make clean
make
make install
echo "end building";

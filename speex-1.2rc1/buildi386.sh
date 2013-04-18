echo "start configuration";
WHOAMI=`whoami`
./configure --prefix=$HOME/Desktop/SPEEX$WHOAMI/speex-1.2rc1/i386 -host=i386-apple-darwin -disable-shared -enable-static -disable-oggtest -disable-fixed-point -enable-float-api -build=x86_64-apple-darwin12.3.0 -with-ogg=$HOME/Desktop/SPEEX$WHOAMI/libogg-1.3.0/i386 CC="/Applications/Xcode.app/Contents/Developer/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2 -std=c99 -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.1.sdk/";
echo "end cnfiguration";
echo "start building";
make clean
make
make install
make clean
echo "end building";
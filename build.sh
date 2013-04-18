WHOAMI=`whoami`
rm -rvf $HOME/Desktop/SPEEX$WHOAMI/
cd ./libogg-1.3.0
./buildAll.sh
cd ..
cd ./speex-1.2rc1
./buildall.sh
cd $HOME/Desktop/SPEEX$WHOAMI/
lipo -create libogg-1.3.0/i386/lib/libogg.a libogg-1.3.0/armv7/lib/libogg.a libogg-1.3.0/armv7s/lib/libogg.a -output libogg.a
lipo -create speex-1.2rc1/i386/lib/libspeex.a speex-1.2rc1/armv7/lib/libspeex.a speex-1.2rc1/armv7s/lib/libspeex.a -output libspeex.a
lipo -create speex-1.2rc1/i386/lib/libspeexdsp.a speex-1.2rc1/armv7/lib/libspeexdsp.a speex-1.2rc1/armv7s/lib/libspeexdsp.a -output libspeexdsp.a
cd ..
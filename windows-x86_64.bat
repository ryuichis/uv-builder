curl -L https://dist.libuv.org/dist/v1.32.0/libuv-v1.32.0.tar.gz -o libuv-v1.32.0.tar.gz
tar xf libuv-v1.32.0.tar.gz
mv libuv-v1.32.0 libuv-v1.32.0.src
mkdir libuv-v1.32.0.build
cd libuv-v1.32.0.build/
cmake -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=../libuv-v1.32.0-windows-x86_64 -DCMAKE_BUILD_TYPE=Release ../libuv-v1.32.0.src
mingw32-make -j2
mingw32-make install
cd ..
tar czf libuv-v1.32.0-windows-x86_64.tar.gz libuv-v1.32.0-windows-x86_64

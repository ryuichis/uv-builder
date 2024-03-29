wget https://dist.libuv.org/dist/v1.32.0/libuv-v1.32.0.tar.gz
tar xf libuv-v1.32.0.tar.gz
mv libuv-v1.32.0 libuv-v1.32.0.src
mkdir libuv-v1.32.0.build
cd libuv-v1.32.0.build/
cmake -DCMAKE_INSTALL_PREFIX=../libuv-v1.32.0-linux-armv7l -DCMAKE_BUILD_TYPE=Release ../libuv-v1.32.0.src
make -j2
make install
cd ..
tar czf libuv-v1.32.0-linux-armv7l.tar.gz libuv-v1.32.0-linux-armv7l

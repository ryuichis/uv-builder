curl -L https://dist.libuv.org/dist/v1.32.0/libuv-v1.32.0.tar.gz -o libuv-v1.32.0.tar.gz
tar xf libuv-v1.32.0.tar.gz
move libuv-v1.32.0 libuv-v1.32.0.src
mkdir libuv-v1.32.0.build
cd libuv-v1.32.0.build/
cmake -DBUILD_TESTING=OFF ..\libuv-v1.32.0.src
cmake --build . --config Release
cd ..
mkdir libuv-v1.32.0-windows-x86_64
cd libuv-v1.32.0-windows-x86_64
mkdir lib
cd lib
move ..\..\libuv-v1.32.0.build\Release\uv.dll libuv.dll
cd ..
move ..\libuv-v1.32.0.src\include .
cd ..
tar czf libuv-v1.32.0-windows-x86_64.tar.gz libuv-v1.32.0-windows-x86_64

curl -L https://github.com/JuliaPackaging/Yggdrasil/releases/download/LibUV-v2+1.29.1-julia+0/LibUV.v2.0.0+1.29.1-julia.x86_64-w64-mingw32.tar.gz -o libuv.tar.gz
tar xf libuv.tar.gz
mkdir libuv-v1.29.1-windows-x86_64
cd libuv-v1.29.1-windows-x86_64
mkdir lib
cd lib
move ..\..\bin\libuv-2.dll libuv.dll
cd ..
move ..\include .
cd ..
tar czf libuv-v1.29.1-windows-x86_64.tar.gz libuv-v1.29.1-windows-x86_64

cd ~
git clone --recursive https://github.com/FWGS/xash3d
cd xash3d
cd engine
git clone https://github.com/FWGS/nanogl
cd ..
git clone https://github.com/ValveSoftware/halflife
mv halflife hlsdk
mkdir build
cd build
cmake -DHL_SDK_PATH=../hlsdk/ -DXASH_VGUI=no -DXASH_NANOGL=yes -DXASH_GLES=yes ..
make
cd ~
mkdir halflife
cp xash3d/build/engine/libxash.so halflife/
cp xash3d/build/mainui/libxashmenu.so halflife/
cp xash3d/build/game_launch/xash3d halflife/
git clone https://github.com/FWGS/hlsdk-xash3d
cd hlsdk-xash3d
git checkout e67d115d9d82cf2ccbcd5a1060d503fcbd3850f2
mkdir build
cd build
cmake ../
make
cd ~
cp hlsdk-xash3d/build/cl_dll/client.so halflife/
cp hlsdk-xash3d/build/dlls/hl.so halflife/
#delete crap
cd ~
rm -rf hlsdk-xash3d
rm -rf xash3d

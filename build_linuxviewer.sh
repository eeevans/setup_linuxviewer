mkdir ~/source
cd ~/source

export GITACHE_ROOT=/opt/gitache_root
git clone --recursive https://github.com/CarloWood/linuxviewer.git
cd linuxviewer
mkdir build
cmake -S . -GNinja -B build -DCMAKE_BUILD_TYPE=RelWithDebug -DEnableDebugGlobal:BOOL=OFF
cd build
ninja

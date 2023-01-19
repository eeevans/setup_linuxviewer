sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential git wget cmake autoconf ninja-build gfortran pkg-config  libtool libblas-dev liblapack-dev libsystemd-dev

sudo apt install -y gawk doxygen graphviz
sudo apt install -y libboost-all-dev libsparsehash-dev
sudo apt install -y libxkbcommon-x11-dev libglibmm-2.4-dev xsltproc libeigen3-dev libvulkan-dev

sudo apt -y install libxml2-dev meson
sudo mkdir /opt/libxml3
sudo chmod 777 /opt/libxml3
cd /opt/libxml3
wget https://download.gnome.org/sources/libxml++/3.2/libxml%2B%2B-3.2.0.tar.xz
tar xf libxml++-3.2.0.tar.xz 
cd libxml++-3.2.0
./configure --prefix=/usr
make
sudo make install


sudo mkdir /opt/vulkan
sudo chmod 777 /opt/vulkan
cd /opt/vulkan
wget https://sdk.lunarg.com/sdk/download/1.3.236.0/linux/vulkansdk-linux-x86_64-1.3.236.0.tar.gz
tar -xvzf vulkansdk-linux-x86_64-1.3.236.0.tar.gz

export  VULKAN_SDK=/opt/vulkan/1.3.236.0/x86_64


sudo mkdir /opt/shaderc
sudo chmod 777 /opt/shaderc
cd /opt/shaderc
git clone https://github.com/google/shaderc shaderc
cd shaderc
./utils/git-sync-deps
mkdir ../build
cd ../build
cmake -GNinja -DCMAKE_BUILD_TYPE=Debug -S ../shaderc
ninja
sudo ninja install

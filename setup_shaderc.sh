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

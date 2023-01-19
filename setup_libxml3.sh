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



sudo mkdir /opt/vulkan
sudo chmod 777 /opt/vulkan
cd /opt/vulkan
wget https://sdk.lunarg.com/sdk/download/1.3.236.0/linux/vulkansdk-linux-x86_64-1.3.236.0.tar.gz
tar -xvzf vulkansdk-linux-x86_64-1.3.236.0.tar.gz

export  VULKAN_SDK=/opt/vulkan/1.3.236.0/x86_64



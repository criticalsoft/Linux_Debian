#The difference between "amdgpu-install" and "amdgpu-pro-install" is that the second installs the proprietary opengl by default and is the same as "amdgpu-install --pro --opencl=pal,legacy"




# FIX: Plasma Desktop Compositor Not Work
sudo apt purge -y xserver-xorg-video-amdgpu

# sudo apt install -y mesa-vulkan-drivers
# sudo apt install -y mesa-opencl-icd

# DEP: D3PhotoInpainting
# sudo apt install -y mesa-utils
# sudo apt install -y libgl*-mesa-glx




# Debian Stable (AMD HWE Driver)
# cd ./amdgpu-pro-*-ubuntu-18*/

# Debian Testing
cd ./amdgpu-pro-*-ubuntu-20*/




#FIX: amdgpu-dkms Compile Error: Remove Old Kernel
#sudo apt search linux-image |grep installed
#sudo apt purge linux-image-5.8.0-*

#sudo apt search linux-headers |grep installed
#sudo apt purge linux-headers-5.8.0-*




#sudo apt install -y dkms

#https://wiki.debian.org/AMDGPUDriverOnStretchAndBuster2
#cd ./amdgpu-pro-*/
#sudo dpkg -i amdgpu-core_*.deb
#sudo dpkg -i amdgpu-dkms-firmware_*.deb
#sudo dpkg -i amdgpu-dkms_*.deb

#sudo dpkg -i opencl-amdgpu-pro_*.deb




#FIX: Could not configure 'libc6:i386'
#sudo dpkg --add-architecture i386
#sudo apt update




# https://math.dartmouth.edu/~sarunas/amdgpu.html
# ./amdgpu-install --help

# DaVinci Resolve (Fusion) StartUp Crash
# ./amdgpu-install --opencl=pal,legacy --no-dkms

./amdgpu-install --opencl=rocm,pal,legacy --no-dkms




# FIX: DaVinci_Resolve could not find any OpenCL capable GPUs
# ./amdgpu-pro-install --help
# ./amdgpu-pro-install --opencl=legacy
# ./amdgpu-pro-install --opencl=pal,legacy
# ./amdgpu-pro-install --opencl=rocm,legacy
# ./amdgpu-pro-install --opencl=rocm,pal,legacy




cd ../




# sudo apt install -y amdgpu




#sudo reboot




#sudo dmesg | grep "amdgpu version"
#kinfocenter




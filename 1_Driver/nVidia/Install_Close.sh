#Detect Chip
lspci -nn | egrep -i "3d|display|vga"


sudo apt install -y mesa-utils

#Detect whether 3D acceleration is working
glxinfo | grep "direct rendering"

#Detect OpenGL Version
glxinfo | grep OpenGL


#FOR: Hotel nVidia GTX 660 Plasma Stop Response With xserver-xorg-video-nouveau Driver
sudo ./nVidia/NVIDIA-Linux-x86_64-410.93.run





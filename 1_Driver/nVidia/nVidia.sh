#Detect Chip
#lspci -nn | egrep -i "3d|display|vga"
#Detect Driver
#glxinfo | grep OpenGL
#Detect whether 3D acceleration is working
#glxinfo |grep render
#Detect OpenGL Version
#glxinfo | grep "OpenGL version"


#FIX:Unreal Engine Crash
#FIX:VirtualBox 3D Acceleration Crash
#FIX:OverWatch With WineHQ Staging_Missing Font, Missing Element, Color Block

#mhwd-nvidia BuiltIn
kv=$(uname -r | awk -F "." '{print $1$2}')
sudo apt install -y linux$kv-nvidia





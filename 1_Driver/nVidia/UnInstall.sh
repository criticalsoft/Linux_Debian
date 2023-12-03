#Must
sudo apt autoremove -y
#Must
#purge nvidia-driver Not Work
#purge nvidia* Is Dangerous
sudo apt purge nvidia-*
#Must
sudo update-initramfs -u




#FIX:Black screen After UnInstall
sudo rm -r /etc/modprobe.d/nvidia*


#ReEnable Nouveau Driver
sudo apt purge xserver-xorg-video-nouveau
sudo apt autoremove -y
sudo apt install -y xserver-xorg-video-nouveau




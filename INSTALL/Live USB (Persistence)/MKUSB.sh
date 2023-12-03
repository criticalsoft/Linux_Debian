# Neon Debian Live USB (Multiple Partition & Persistence)

#https://help.ubuntu.com/community/mkusb/
#Has ISO9660 Read Only Partition (Secure)

sudo add-apt-repository -y ppa:mkusb/ppa
sudo apt update
sudo apt install -y mkusb usb-pack-efi

#USE: Need Root Permission
#sudo mkusb-dus




######## Shared Folder Permission Resolution ########
# FIX: CanNot Boot Into Real PC
# sudo ./VBoxLinuxAdditions.run uninstall

# cd /opt/VBoxGuestAdditions-*/
# sudo ./uninstall.sh




# Devices -> Insert Guest Additions CD
# sudo ./VBoxLinuxAdditions.run
sudo sh ./VBoxLinuxAdditions.run




sudo apt install -y gcc make perl

# Guest Addition (VBoxLinuxAdditions.run) DEP
sudo apt install -y linux-headers-$(uname -r)

sudo /sbin/rcvboxadd quicksetup all
sudo /sbin/rcvboxadd setup




# FIX: Guest Addition Shared Folder (media sf_-_DRIVE) Permission (Linux Guest Could Not Enter Host Folder)
# Before sudo Setup
# Not Found Error
# su -
# adduser $USER vboxsf
# su root --command "adduser $USER vboxsf"

# Need Guest Addition Installed
# sudo usermod -aG vboxsf $USER
sudo adduser $USER vboxsf




notify-send --icon=application-x-plasma --expire-time=0 --app-name="VirtualBox" "
ReLogIn
"




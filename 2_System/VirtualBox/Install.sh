# https://wiki.debian.org/VirtualBox

# FOR:Keyboard and Mouse Driver
# virtualbox-dkms Included
# sudo apt install -y virtualbox
# sudo apt install -y virtualbox-qt
# sudo apt install -y virtualbox-ext-pack

# Share Folder, Graphic Driver
# sudo apt install -y virtualbox-guest-additions-iso
# sudo apt install -y virtualbox-guest-utils

# Need HD Access to Copy source_list
# sudo apt install -y linux-headers-$(uname -r)
# sudo apt install -y make gcc g++




# sudo dpkg -i ./*.deb

# Debian SID 5.8 Kernel Too New, Select 5.7 From Grub
sudo ./VirtualBox-*.run

notify-send --icon=virtualbox --expire-time=0 --app-name="VirtualBox" "
Preferences->Input->Virtual Machine
Host Key Combination: Left Ctrl + Left Alt
"

# FOR: Sync With Windows
sudo virtualbox ./Oracle_VM_VirtualBox_Extension_Pack-*.vbox-extpack




# https://www.virtualbox.org/wiki/Linux_Downloads

# sudo tee --append /etc/apt/sources.list.d/virtualbox.list << EOF
# deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian testing contrib
# EOF
# 
# wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
# 
# sudo apt update
# 
# sudo apt install -y virtualbox




# FIX:Access Physical Storage Permission
# Not Work
# sudo usermod -g root $USER
# groups $USER




# FIX: Host CanNot See USB Device (Implementation of the USB 3.0 controller not found) (iPhone, SATA->SSD)

# sudo tee /usr/share/polkit-1/actions/virtualbox.policy << EOF
# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE policyconfig PUBLIC "-//freedesktop//DTD PolicyKit Policy Configuration 1.0//EN"
# "http://www.freedesktop.org/standards/PolicyKit/1/policyconfig.dtd">
# <policyconfig>
#
#    <vendor>VirtualBox</vendor>
#    <vendor_url>https://www.virtualbox.org/</vendor_url>
#    <icon_name>virtualbox</icon_name>
#
#    <action id="virtualbox">
#        <description>Run VirtualBox as root</description>
#        <message>Authentication is required</message>
#
#        <defaults>
#            <allow_any>auth_admin</allow_any>
#            <allow_inactive>auth_admin</allow_inactive>
#            <allow_active>auth_admin</allow_active>
#        </defaults>
#
#        <annotate key="org.freedesktop.policykit.exec.path">/usr/bin/VirtualBox</annotate>
#        <annotate key="org.freedesktop.policykit.exec.allow_gui">true</annotate>
#    </action>
# </policyconfig>
# EOF
# sudo sed -i "/Exec=/c\Exec=sudo virtualbox %U" /usr/share/applications/virtualbox.desktop

# Try:
# su-to-root

# Only KDE
# sudo sed -i "/Exec=/c\Exec=kdesu VirtualBox %U" /usr/share/applications/virtualbox.desktop

sudo apt install -y pkexec
sudo sed -i "/Exec=/c\Exec=pkexec VirtualBox %U" /usr/share/applications/virtualbox.desktop




# FIX: The VirtualBox Linux kernel driver is either not loaded
# FIX: The vboxdrv kernel module is not loaded
sudo apt install -y linux-headers-$(uname -r)
# sudo apt install -y linux-image-$(uname -r)
# sudo apt install -y virtualbox-dkms
sudo /sbin/vboxconfig


# FIX:sudo /sbin/vboxconfig vboxdrv.sh: failed
# sudo apt install -y libelf-dev


# FIX:Implementation of the USB 3.0 controller not found
# Install Extension Pack

# FIX: Host CanNot See USB Device (Implementation of the USB 3.0 controller not found) (iPhone, SATA->SSD)
# sudo adduser $USER vboxusers


# FIX:Module vboxdrv not found in directory
# sudo modprobe vboxdrv




# Panel Single Instance
# sudo sed -i "/Exec=/c\Exec=wmctrl -a virtualbox || pkexec virtualbox %U" /usr/share/applications/virtualbox.desktop
# tc="xdotool search --class 'virtualbox manager'"
# tee ~/.config/virtualbox.sh << EOF
# if [ \`$tc |wc -l\` -eq 0 ]; then \`pkexec virtualbox %U\`; else if [ \`xwininfo -id \$($tc |tail -1) |grep IsViewable |wc -l\` -eq 0 ]; then $tc windowactivate %@; else $tc windowminimize %@; fi; fi &
# EOF
# sudo chmod +x ~/.config/virtualbox.sh
# sudo sed -i "/Exec=/c\Exec=sh /home/$USER/.config/virtualbox.sh" /usr/share/applications/virtualbox.desktop




# FIX: VMDK HardWare Partition Access Denied
sudo usermod -a -G disk $USER
# ReLogIn




notify-send --icon=virtualbox --expire-time=0 --app-name="VirtualBox" "
FIX: VT-x is disabled in the BIOS for all CPU modes
Enable Virtualization Technology In BIOS Option
"




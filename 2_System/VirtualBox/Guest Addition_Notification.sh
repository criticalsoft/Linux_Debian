# StartUp Notification Disable_After Boot Into Physical PC




# Shared Folder
# Arch
# sudo sed -i "/notify-send/c\notify-send ''" /etc/X11/xinit/xinitrc.d/98vboxadd-xclient.sh
# Debian
sudo sed -i "/notify-send/c\notify-send ''" /etc/X11/Xsession.d/98vboxadd-xclient




# Second Notification
sudo sed -i "/notify-send/c\notify-send ''" /opt/VBoxGuestAdditions-*/other/98vboxadd-xclient




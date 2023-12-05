# https://wiki.archlinux.org/title/fcitx
# https://wiki.archlinux.org/title/Fcitx5




#Debian
# FIX: dbus-launch not found
# BuildIn
# sudo apt install -y dbus-x11




# sudo apt purge -y fcitx
sudo apt install -y fcitx5


sudo apt install -y fcitx5-hangul
# sudo apt install -y fcitx5-pinyin
sudo apt install -y fcitx5-chinese-addons


# QT, GTK Support
sudo apt install -y fcitx-frontend-all
# sudo apt install -y fcitx5-frontend-all
# sudo apt install -y fcitx5-frontend-qt5 fcitx5-frontend-gtk3
# Arch
# sudo apt install -y fcitx5-gtk fcitx5-qt




# Configuration
# sudo apt install -y kde-config-fcitx
# Arch
# sudo apt install -y kcm-fcitx
# sudo apt install -y fcitx-configtool
sudo apt install -y fcitx5-configtool




#FIX:Fcitx IM List Empty In Linux Mint
#sudo apt install -y language-selector-common

#sudo apt install -y fcitx-frontend-gtk2 fcitx-frontend-gtk3 fcitx-frontend-qt4 fcitx-frontend-qt5
#sudo apt install -y fcitx-ui-classic
#sudo apt install -y $(check-language-support)

#ReLogin




#sudo apt install -y fcitx-tools
#sudo apt install -y libfcitx-qt0 fcitx-libs




#Ubuntu Skin
#sudo apt install -y fcitx-ui-qimpanel




# sudo apt purge -y ibus

# im-config &
# im-config

# fcitx5-diagnose

# FIX: Arch Plasma X11 CanNot Switch Input Method In QT Program
# FIX: Arch Plasma Wayland CanNot Switch Input Method In QT Program
# tee --append ~/.bashrc << EOF
# tee --append ~/.xprofile << EOF
# FIX: Not Work In Arch
# https://wiki.archlinux.org/title/environment_variables
# tee --append ~/.config/environment.d/input_method.conf << EOF
sudo tee --append /etc/environment << EOF
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
bash -c 'killall fcitx5; fcitx5' &
EOF




# FIX: Another XIM daemon named ibus is running
# FIX: killall ibus-daemon Terminal Stop Response
# bash -c 'killall ibus-daemon' &




# cd ./
./Restore.sh
# cd -


tee ~/.local/share/applications/fcitx_restart.desktop << EOF
[Desktop Entry]
Name=Fcitx Restart
# Exec=bash -c 'killall fcitx; fcitx' &
Exec=bash -c 'killall fcitx5; fcitx5' &
Icon=fcitx
Type=Application
EOF
ln -s ~/.local/share/applications/fcitx_restart.desktop ~/.config/autostart/

# fcitx-config-gtk3
# fcitx5-config-qt
# sudo apt install -y kde-config-fcitx
# fcitx-configtool
# fcitx5-configtool
# kcmshell5 kcm_fcitx &




# FIX: Fcitx Icon Not Showing On Input Method Panel Widget

# # sudo apt install -y fcitx-module-kimpanel
# # sudo apt install -y fcitx-ui-qimpanel

# bash -c 'fcitx -r --enable fcitx-qimpanel' &
# bash -c 'fcitx-qimpanel' &




notify-send --icon=preferences-system-linux --expire-time=0 --app-name="System" "
ReLogIn
"




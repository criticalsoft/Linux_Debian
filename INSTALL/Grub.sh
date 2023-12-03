######## Boot_Debian_Live Installer (Not Graphic Installer) DoesNot Create Boot Loader ########
# cd /boot/efi/EFI/
# sudo cp ./Debian/grubx64.efi ./boot/bootx64.efi
sudo cp /boot/efi/EFI/Debian/grubx64.efi /boot/efi/EFI/boot/bootx64.efi
ls /boot/efi/EFI/boot/
# cd -




######## Text_Boot ########
# Back Into Boot / ShutDown Text
cat /etc/default/grub |grep quiet
cat /etc/default/grub |grep splash
sudo sed -i "s/quiet/text/g" /etc/default/grub
sudo sed -i "s/splash/text/g" /etc/default/grub
cat /etc/default/grub |grep text




######## Remember_Last ########
# Debian
sudo tee --append /etc/default/grub << EOF
GRUB_TIMEOUT=5
GRUB_TIMEOUT_STYLE=menu
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true
GRUB_THEME=""
GRUB_COLOR_NORMAL="white/black"
GRUB_COLOR_HIGHLIGHT="black/white"
GRUB_BACKGROUND=""
EOF

# # Will Be Reset By: sudo dpkg-reconfigure desktop-base; sudo update-grub
# sudo cat /boot/grub/grub.cfg |grep menu_color
# sudo sed -i "/menu_color_normal/c\set menu_color_normal=white/black" /boot/grub/grub.cfg
# sudo sed -i "/menu_color_highlight/c\set menu_color_highlight=black/white" /boot/grub/grub.cfg
# sudo cat /boot/grub/grub.cfg |grep menu_color

sudo cat /etc/grub.d/05_debian_theme |grep menu_color
sudo sed -i "/menu_color_normal/c\set menu_color_normal=white/black" /etc/grub.d/05_debian_theme
sudo sed -i "/menu_color_highlight/c\set menu_color_highlight=black/white" /etc/grub.d/05_debian_theme
sudo cat /etc/grub.d/05_debian_theme |grep menu_color




# # Arch
# sudo sed -i '/GRUB_TIMEOUT=/c\GRUB_TIMEOUT=5' /etc/default/grub
# cat /etc/default/grub |grep GRUB_TIMEOUT=
# 
# sudo sed -i '/GRUB_TIMEOUT_STYLE=/c\GRUB_TIMEOUT_STYLE=menu' /etc/default/grub
# cat /etc/default/grub |grep GRUB_TIMEOUT_STYLE=
# 
# sudo sed -i '/GRUB_DEFAULT=/c\GRUB_DEFAULT=saved' /etc/default/grub
# cat /etc/default/grub |grep GRUB_DEFAULT=
# 
# sudo sed -i '/GRUB_SAVEDEFAULT=/c\GRUB_SAVEDEFAULT=true' /etc/default/grub
# cat /etc/default/grub |grep GRUB_SAVEDEFAULT=
# 
# sudo sed -i '/GRUB_THEME=/c\GRUB_THEME=""' /etc/default/grub
# cat /etc/default/grub |grep GRUB_THEME=
# 
# sudo sed -i '/GRUB_COLOR_NORMAL=/c\GRUB_COLOR_NORMAL="white/black"' /etc/default/grub
# cat /etc/default/grub |grep GRUB_COLOR_NORMAL=
# 
# sudo sed -i '/GRUB_COLOR_HIGHLIGHT=/c\GRUB_COLOR_HIGHLIGHT="black/white"' /etc/default/grub
# cat /etc/default/grub |grep GRUB_COLOR_HIGHLIGHT=
# 
# sudo sed -i '/GRUB_BACKGROUND=/c\GRUB_BACKGROUND=""' /etc/default/grub
# cat /etc/default/grub |grep GRUB_BACKGROUND=




######## BackGround ########
#sudo rm /usr/share/desktop-base/*-theme/grub/grub-*.png

#sudo touch /usr/share/desktop-base/futureprototype-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/futureprototype-theme/grub/grub-16x9.png
#sudo touch /usr/share/desktop-base/moonlight-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/moonlight-theme/grub/grub-16x9.png
#sudo touch /usr/share/desktop-base/softwaves-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/softwaves-theme/grub/grub-16x9.png
#sudo touch /usr/share/desktop-base/lines-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/lines-theme/grub/grub-16x9.png
#sudo touch /usr/share/desktop-base/joy-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/joy-theme/grub/grub-16x9.png
#sudo touch /usr/share/desktop-base/spacefun-theme/grub/grub-4x3.png
#sudo touch /usr/share/desktop-base/spacefun-theme/grub/grub-16x9.png

#sudo dpkg-reconfigure desktop-base
#sudo update-grub




#The following packages will be REMOVED: gnome-control-center
#sudo apt purge desktop-base
#sudo update-grub




#sudo apt install -y grub-customizer

#sudo cp ./Grub/Transparent.png /boot/grub/

#Appearance settings |
#Wait Loading ...
#Normal Font:
#white
#Normal Background:
#transparent
#Highlighted Font:
#black
#Highlighted Background:
#white
#background image:
#/boot/grub/Transparent.png
#Save
#Close

#grub-customizer




# sudo touch /boot/grub/Transparent.png
# /etc/grub.d/05_debian_theme
# export GRUB_BACKGROUND="/boot/grub/Transparent.png"

sudo update-grub

# Same
# sudo grub-mkconfig -o /boot/grub/grub.cfg




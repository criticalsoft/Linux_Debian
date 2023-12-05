######## Dependence ########
# XFCE: Compton (Kawase Blur)

# Gnome: Blur Me Extension

# KDE Plasma: Kvantum Manager + Force Blur Script
# xdg-open "https://github.com/criticalsoft/WorkFlow_KDE_Plasma"




######## Application Style Theme (Transparent) ########
# FIX: GTK Transparent Not Working
# sudo apt purge gtk*-nocsd

# notify-send --icon=style --expire-time=0 --app-name="GTK CSD" "
# ReLogIn
# "


mkdir -p ~/.themes/
cp -r ./Theme/*/ ~/.themes/




# tee ~/.gtkrc-2.0 << EOF
# gtk-theme-name="Breeze_Dark_Glass_50"
# gtk-icon-theme-name="Mint XFCE White"
# gtk-cursor-theme-name="Breeze-Hacked"
# gtk-font-name="Terminus (TTF) Medium 15"
# gtk-button-images=1
# gtk-menu-images=1
# EOF

# FIX: Ugly GTK Theme In Other Desktop Environment (Plasma Only Write, DoesNot Read This)
mkdir -p ~/.config/gtk-3.0/
tee ~/.config/gtk-3.0/settings.ini << EOF
[Settings]
gtk-theme-name=Breeze_Dark_Glass_50
gtk-icon-theme-name=mint-xfce-white
gtk-cursor-theme-name=Breeze-Hacked
gtk-font-name=Terminus (TTF) Medium 15
gtk-button-images=1
gtk-menu-images=1
EOF

# FIX: Ugly GTK Theme In Other Desktop Environment (KDE Plasma)
# mkdir -p ~/.config/gtk-4.0/
# tee ~/.config/gtk-4.0/settings.ini << EOF
# [Settings]
# gtk-theme-name=Breeze_Dark_Glass_50
# gtk-icon-theme-name=mint-xfce-white
# gtk-cursor-theme-name=Breeze-Hacked
# gtk-font-name=Terminus (TTF) Medium 15
# EOF

# FIX: Ugly GTK Theme In Other Desktop Environment (Gnome / XFCE)
# ~/.bashrc Not Work In XFCE
# tee --append ~/.profile << EOF
# FIX: Not Work In Arch
# https://wiki.archlinux.org/title/environment_variables
# tee --append ~/.config/environment.d/theme.conf << EOF
sudo tee --append /etc/environment << EOF
export GTK_THEME=Breeze_Dark_Glass_50
EOF
export GTK_THEME=Breeze_Dark_Glass_50

# relogin


#xfce4-appearance-settings

# Stable
kcmshell5 kde-gtk-config

# Testing
# notify-send --icon=preferences-desktop-theme --expire-time=0 --app-name="Theme" "
# Configure GNOME/GTK Application Style...
# "
# kcmshell5 kcm_style




gsettings set org.gnome.shell.extensions.user-theme name 'Default'
gsettings set org.gnome.desktop.interface gtk-theme 'Breeze_Dark_Glass_50'
gsettings set org.gnome.desktop.interface icon-theme 'breeze'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze-Blue'

gsettings set org.gnome.desktop.interface font-name 'Cantarell 11'
#gsettings set org.gnome.desktop.interface document-font-name 'Sans 11'
#gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 11'

gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Cantarell Bold 11'

#gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/NAME.jpg'
#gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/NAME.jpg'




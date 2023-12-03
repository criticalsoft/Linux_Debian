######## Dependence ########
# XFCE: Compton (Kawase Blur)

# Gnome: Blur Me Extension

# KDE Plasma: Kvantum Manager + Force Blur Script




######## Transparent Application Theme (eg: Kate Glass, Falkon Glass) ########
#DEP: Compile & Install
#sudo apt install -y libkf5kdelibs4support-dev qtbase5-private-dev
#sudo rm -r ~/Documents/qtcurve/
#cp -r ./QTCurve/qtcurve/ ~/Documents/
#cd ~/Documents/qtcurve/build/
#sudo make install
#cd -

#sudo apt install -y qtcurve

#No Need, Use qt5ct Or kcmshell5 style (Change Between: Breeze / QTCurve / Kvantum)
#tee --append ~/.profile << EOF
#export QT_STYLE_OVERRIDE=qtcurve
#EOF
#export QT_STYLE_OVERRIDE=qtcurve
#ReLogIn




#notify-send --icon=preferences-desktop-theme --expire-time=0 --app-name="Theme" "
#Application Style: QtCurve -> Configure Application Style
#Import: ./QTCurve_Theme/
#"




# # FIX: Some Distro Old Version Of Kvantum Not Work With Falkon (First Launched Window)
# # FIX: Some Distro Old Version Of Kvantum Not Work With Konsole (ToolBar Not Tab)
# 
# rm -r ./Kvantum/
# # git clone --branch V1.0.1 https://github.com/tsujan/Kvantum.git
# git clone https://github.com/tsujan/Kvantum.git
# 
# sudo apt build-dep -y qt5-style-kvantum
# 
# # DEP: Compile & Install
# # sudo apt install -y libkf5windowsystem-dev
# # sudo apt install -y libqt5svg5-dev libqt5x11extras5-dev
# 
# # FIX: Could not find a configuration file for package **** that is compatible with requested version ####
# # Kate Falkon Glass (kdesrc-build)
# export CMAKE_PREFIX_PATH=~/kde/usr/
# 
# # FIX kvantummanager: libQt#Core.so: version #### not found
# # export LD_LIBRARY_PATH=~/Qt/*/gcc_64/lib/
# 
# mkdir -p ./Kvantum/Kvantum/build/
# cd ./Kvantum/Kvantum/build/
# #FIX: Source Path Change
# rm -f ./CMakeCache.txt
# cmake ../
# # make
# sudo make install
# cd ../../../




# Kvantum Manager
# sudo apt install -y kvantum
sudo apt install -y qt5-style-kvantum


# sudo add-apt-repository -y ppa:papirus/papirus
# sudo apt update
# sudo apt install qt5-style-kvantum




# Use qt5ct Or kcmshell5 style (Change Between: Breeze / QTCurve / Kvantum)
# FIX: Glass Theme Effect In Other Desktop Environment (eg: WayFire)
# tee --append ~/.profile << EOF
# export QT_STYLE_OVERRIDE=kvantum
# EOF
# export QT_STYLE_OVERRIDE=kvantum
# ReLogIn

kcmshell5 style




# sudo apt install -y qt5-style-kvantum-themes
#sudo rm -r /usr/share/Kvantum/KvArc*/

mkdir -p ~/.config/Kvantum/
cp -r ./Kvantum_Theme/*/ ~/.config/Kvantum/

cp ./Kvantum_Theme/kvantum.kvconfig ~/.config/Kvantum/

kvantummanager




######## Blur FIX ########
# Glass Blur Desktop Effect (eg Falkon)
# notify-send --icon=preferences-desktop-theme --expire-time=0 --app-name="Theme" "
# Search: Blur
# CheckBox -> Apply
# "
# 
# sudo apt install -y plasma-desktop
# sudo apt install -y plasma-widgets-addons
# kcmshell5 kcm_kwin_effects


#Plasma Decoration (FIX: GTK Workspace)
#GTK No CSD (FIX: Duplicated Close Button), But It Will Disable GTK Transparent Theme
#sudo apt install -y gtk3-nocsd
#ReLogIn

#FIX: GTK Transparent Not Working
#sudo apt purge gtk3-nocsd
#ReLogIn


mkdir -p ~/.local/share/kwin/scripts/
mkdir -p ~/.local/share/kservices5/


#FIX: GTK Blur InSide KDE Plasma
#FIX: Falkon Blur Not Working
rm -rf ~/.local/share/kwin/scripts/forceblur/
cp -r ./Tweak/forceblur/ ~/.local/share/kwin/scripts/
ln -sf ~/.local/share/kwin/scripts/forceblur/metadata.desktop ~/.local/share/kservices5/forceblur.desktop




############ Application Style Setting ############
# FIX: Ugly QT Theme (eg Icon) In Other Desktop Environment (Gnome / XFCE / Enlightenment) 
# With Widget Style, You will get full Transparent in other Desktop Environment

# FIX: Panel Icon Missing (KDE Plasma + Kvantum)
# ~/.bashrc Not Work In XFCE
# tee --append ~/.profile << EOF
# FIX: Not Work In Arch
# https://wiki.archlinux.org/title/environment_variables
# tee --append ~/.config/environment.d/theme.conf << EOF
sudo tee --append /etc/environment << EOF
export QT_QPA_PLATFORMTHEME=kde
EOF
export QT_QPA_PLATFORMTHEME=kde

# kcmshell5 style




#Run QT Theme WithOut KDE
#Same as kcmshell5 style, Use System Default
#Supports Custom qss
#Stable Doesnot Have, Testing Has
sudo apt install -y qt5ct

#Itis Just Widget Style Package, For Widget Theme Selectors (Not Only For qt5ct)
#sudo apt install -y qt5-style-plugins

# # FIX: OBS Stop Response When Launch In Gnome (QSystemTrayIcon::setVisible: No Icon set)
# # FIX: ScreenGrab StartUp Problem
# # Issue: Some App Icon DoesNot ShowUp In Launcher (eg: FireFox PostMan)
# # FIX (Simple Screen Recorder, OBS): QSystemTrayIcon setVisible No Icon set
# # ~/.bashrc Not Work In XFCE
# # tee --append ~/.profile << EOF
# # FIX: Not Work In Arch
# # https://wiki.archlinux.org/title/environment_variables
# # tee --append ~/.config/environment.d/theme.conf << EOF
# sudo tee --append /etc/environment << EOF
# export QT_QPA_PLATFORMTHEME=qt5ct
# EOF
# export QT_QPA_PLATFORMTHEME=qt5ct

#qt5ct




######## Colors (Window Decoration & Plasma Component) ########
#For QT Applications
#mkdir -p ~/.local/share/color-schemes/
#cp -r ./Colors/*.colors ~/.local/share/color-schemes/
#FOR:KDE Apps Color In Other Desktop
kcmshell5 colors





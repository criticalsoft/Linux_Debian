mkdir -p ~/Wallpaper/
cp ./MPVWallpaper/Image/Transparent.png ~/Wallpaper/


#sudo apt install -y xwinwrap

sudo apt install -y xorg-dev libx11-dev
sudo apt install -y x11proto-xext-dev
sudo apt install -y libxrender-dev
sudo apt install -y libxext-dev

git clone https://github.com/ujjwal96/xwinwrap.git ./MPVWallpaper/xwinwrap/
cd ./MPVWallpaper/xwinwrap/
make clean
make
sudo make install
cd ../../


sudo apt install -y mpv

tee ~/.local/share/applications/mpv_wallpaper.desktop << EOF
[Desktop Entry]
Name=MPV Wallpaper
Exec=bash -c 'killall xwinwrap; sleep 1; xwinwrap -fs -fdt -ni -b -nf -un -- mpv -wid WID --no-osc --no-osd-bar --loop-file --no-audio --no-input-default-bindings --panscan=1.0 /home/$USER/Wallpaper/StarCitizen*.mp4' &
Icon=desktop
Type=Application
#FIX: DoesNot ShowUp In Compiz Session
#OnlyShowIn=XFCE;GNOME;
#NotShowIn=KDE;
EOF
#ln -sf ~/.local/share/applications/mpv_wallpaper.desktop ~/.config/autostart/

#bash -c 'killall xwinwrap; sleep 1; xwinwrap -fs -fdt -ni -b -nf -un -- mpv -wid WID --no-osc --no-osd-bar --loop-file --no-audio --no-input-default-bindings --panscan=1.0 /home/$USER/Wallpaper/StarCitizen*.mp4' &

#Exclude xwinwrap
#kcmshell5 kcmsmserver




# rm -r ~/Wallpaper/
# mkdir -p ~/Wallpaper/

# cp ./Transparent.png ~/Wallpaper/
cp -r ./Wallpaper/ ~/




#KDE
#ln -sf ~/WallPaper/ ~/.local/share/wallpapers

#Gnome / XFCE
#Not Work
#ln -sf ~/WallPaper/ ~/.backgrounds

mkdir -p ~/.cache/gnome-control-center/backgrounds/
ln -sf ~/Wallpaper/*/*.jpg ~/.cache/gnome-control-center/backgrounds/
ln -sf ~/Wallpaper/*/*.png ~/.cache/gnome-control-center/backgrounds/




#FIX WallPaper:QtQuick.Controls is not installed
#sudo apt install --reinstall qml-module-qtquick-controls
#sudo apt install --reinstall qml-module-qtquick-controls2
#sudo apt install --reinstall qml-module-qtquick-templates2




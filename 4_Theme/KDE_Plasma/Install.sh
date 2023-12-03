######## Desktop Theme(Transparent Panel, Transparent Start Menu, Desktop Widget) ########
mkdir -p ~/.local/share/plasma/desktoptheme/
cp -r ./DesktopTheme/OffLine/*/ ~/.local/share/plasma/desktoptheme/
kcmshell5 kcm_desktoptheme




######## Video WallPaper ########
#https://store.kde.org/p/1213488/
kpackagetool5 -t Plasma/Wallpaper -i ./SmartVideoWallpaper/*.tar.gz




######## Decoration ########
mkdir -p ~/.local/share/aurorae/themes/
cp -r ./Decoration/OffLine/*/ ~/.local/share/aurorae/themes/

kcmshell5 kwindecoration




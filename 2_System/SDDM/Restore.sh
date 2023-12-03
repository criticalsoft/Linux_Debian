#Keep Ubuntu Breeze Theme
#sudo rm -r /usr/share/sddm/themes/*
sudo mkdir -p /usr/share/sddm/themes/
sudo cp -r ./Theme/* /usr/share/sddm/themes/
#FIX: Ubuntu DoesNot Show Up
#sudo chmod 644 -R /usr/share/sddm/themes/*
sudo chmod 755 -R /usr/share/sddm/themes/*/




#rm -r ~/.local/share/plasma/look-and-feel/
mkdir -p ~/.local/share/plasma/look-and-feel/
cp -r ./KSplash/* ~/.local/share/plasma/look-and-feel/




# sync
# echo SYNC





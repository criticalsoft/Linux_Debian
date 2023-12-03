sudo apt install -y kate




cd ./CONFIG/
./Restore.sh
cd ../

sudo sed -i "/Exec=/c\Exec=kate --new %U" /usr/share/applications/org.kde.kate.desktop




#KDE Plasma
# BuildIn
# Fresh Install
sudo apt install -y sddm


# FIX: Live Build PlasmaDesktop Crash
# sudo dpkg-reconfigure sddm
sudo dpkg-reconfigure --unseen-only sddm


# cd ./
./Restore.sh
# cd -




#sudo sed -i "/Current=/c\Current=Starcraft" /etc/sddm.conf
#sudo sed -i "/Current=/c\Current=breeze" /etc/sddm.conf


#White Screen
#sudo rm /usr/share/sddm/themes/*/background.png
#sudo touch /usr/share/sddm/themes/background.png
#sudo sed -i "/background=/c\background=/usr/share/sddm/themes/background.png" /usr/share/sddm/themes/*/theme.conf.user

#sudo cp ~/WallPaper/Transparent.png /usr/share/sddm/themes/debian-maui/
#sudo chmod 750 /usr/share/sddm/themes/debian-maui/Transparent.png
#sudo sed -i "/background=/c\background=/usr/share/sddm/themes/debian-maui/Transparent.png" /usr/share/sddm/themes/debian-maui/theme.conf.user


#sudo rm -r /usr/share/sddm/themes/*
#sudo kcmshell5 kcm_sddm
#sudo sed -i "/color=/c\color=#000000" /usr/share/sddm/themes/*/theme.conf
#sudo sed -i "/color=/c\color=#000000" /usr/share/sddm/themes/*/theme.conf.user


#Use Manual Edit For Complex Theme
#/etc/sddm.conf
#/usr/share/sddm/themes/

cat /usr/share/sddm/themes/*/theme.conf.user
sudo tee /usr/share/sddm/themes/*/theme.conf.user << EOF
[General]
type=color
color=#000000
background=
EOF
cat /usr/share/sddm/themes/*/theme.conf.user




#notify-send --icon=preferences-system-linux --expire-time=0 --app-name="System" "
#Must Save Once
#"
#FOR:Make Default SDDM Config
#sudo kcmshell5 sddm &
kcmshell5 sddm




kcmshell5 kcm_splashscreen





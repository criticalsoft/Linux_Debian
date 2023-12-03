sudo apt install -y simplescreenrecorder




# DoesNot Support Chroot
# sudo snap install simplescreenrecorder

# # Make Default Config
# /snap/bin/simplescreenrecorder --start-hidden &




# cd ./
./Restore.sh
# cd ./




####DoNot Use SystemTray, Launch Multiple Instance From Panel####
#sudo tee /usr/share/applications/simplescreenrecorder.desktop << EOF
#[Desktop Entry]
#Name=SimpleScreenRecorder
#Exec=bash -c 'simplescreenrecorder --start-hidden' &
#Icon=simplescreenrecorder
#Type=Application
#EOF
#bash -c 'simplescreenrecorder --start-hidden' &

#ln -sf /usr/share/applications/simplescreenrecorder.desktop ~/.config/autostart/




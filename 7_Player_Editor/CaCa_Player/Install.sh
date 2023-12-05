sudo apt install -y mplayer


mkdir -p ~/CaCa_Player/
cp ./Play.sh ~/CaCa_Player/
chmod 750 ~/CaCa_Player/Play.sh
chmod +x ~/CaCa_Player/Play.sh


tee ~/.local/share/applications/cacaplayer.desktop << EOF
[Desktop Entry]
Name=CaCa Player
Exec=\$HOME/CaCa_Player/Play.sh
Type=Application
Icon=video
EOF




# TTY Image Viewer (cacaview)
sudo apt install -y caca-utils

# Use:
# cacaview ~/.backgrounds/Single/*.png




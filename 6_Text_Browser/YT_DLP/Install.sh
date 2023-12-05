# sudo apt install -y youtube-dl

# wget https://yt-dl.org/latest/youtube-dl -O ~/.local/bin/youtube-dl
# sudo chmod a+x ~/.local/bin/youtube-dl
# youtube-dl --update




# FIX: Slow Download Speed
sudo apt install -y yt-dlp




mkdir -p ~/YouTube_DLZ/
cp ./Highest.sh ~/YouTube_DLZ/
cp ./ReCode.sh ~/YouTube_DLZ/
chmod 755 ~/YouTube_DLZ/*.sh




tee ~/.local/share/applications/youtube_dlz_Highest.desktop << EOF
[Desktop Entry]
Name=YouTube DLZ Highest
Exec=\$HOME/YouTube_DLZ/Highest.sh
Type=Application
Icon=video
EOF

tee ~/.local/share/applications/youtube_dlz_ReCode.desktop << EOF
[Desktop Entry]
Name=YouTube DLZ ReCode
Exec=\$HOME/YouTube_DLZ/ReCode.sh
Type=Application
Icon=video
EOF




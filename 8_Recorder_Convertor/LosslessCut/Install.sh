mkdir ~/LosslessCut/
cp ./LosslessCut-*.AppImage ~/LosslessCut/

#sudo ln -sf /home/$USER/LosslessCut/LosslessCut-*.AppImage /usr/local/bin/LosslessCut
ln -sf ~/LosslessCut/LosslessCut-*.AppImage ~/.local/bin/LosslessCut




tee ~/.local/share/applications/losslesscut.desktop << EOF
[Desktop Entry]
Name=LosslessCut
Exec=LosslessCut --no-sandbox
Icon=video-editor
Type=Application
EOF




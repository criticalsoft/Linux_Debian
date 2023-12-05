tar xzf ./postman-*.tar.gz --directory ~/

sudo ln -sf ~/Postman/app/Postman ~/.local/bin/postman




tee ~/.local/share/applications/postman.desktop << EOF
[Desktop Entry]
Name=PostMan
# Exec=postman
Exec=~/.local/bin/postman
Icon=postman
Type=Application
EOF

# FIX: App Icon Not Show Up In Launcher
# cp ~/Postman/app/resources/app/assets/icon.png ~/.local/share/icons/postman.png
cp ./postman.png ~/.local/share/icons/




# DEP: RunTime
# sudo apt install -y libgconf-*




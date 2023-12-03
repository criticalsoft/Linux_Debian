#~/.config/kwinrc [Effect-MouseClick]


#xte SendKey Enable MouseClick Effect
tee ~/.local/share/applications/mouseclickanimation.desktop << EOF
[Desktop Entry]
Type=Application
Name=MouseClickAnimation
Exec=bash -c "sleep 5; qdbus org.kde.kglobalaccel /component/kwin invokeShortcut 'ToggleMouseClick' &"
Icon=media-record
EOF

# Run Only When Need
# ln -sf ~/.local/share/applications/mouseclickanimation.desktop ~/.config/autostart/

#bash -c "sleep 5; qdbus org.kde.kglobalaccel /component/kwin invokeShortcut 'ToggleMouseClick' &"




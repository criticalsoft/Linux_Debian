#Many Error
sudo apt install -y screenkey




tee ~/.local/share/applications/screenkey_gui.desktop << EOF
[Desktop Entry]
Type=Application
Name=ScreenKey GUI
Exec=screenkey --show-settings
Icon=media-record
EOF

tee ~/.local/share/applications/screenkey.desktop << EOF
[Desktop Entry]
Type=Application
Name=ScreenKey
Exec=killall screenkey; screenkey
Icon=media-record
EOF

# Run Only When Need
# ln -sf ~/.local/share/applications/screenkey.desktop ~/.config/autostart/




#--vis-shift Not Work With --key-mode composed / translated
#bash -c "killall screenkey; screenkey --position fixed --geometry 480x60+80+1300 --opacity 0.5 --mods-mode tux --timeout 1.5 --compr-cnt 1 --vis-shift --mods-only --key-mode composed" &

#--mods-only Not Work With --key-mode keysyms / raw
#bash -c "killall screenkey; screenkey --position fixed --geometry 480x60+80+1300 --opacity 0.5 --mods-mode tux --timeout 1.5 --compr-cnt 1 --vis-shift --mods-only --key-mode raw" &

#bash -c "killall screenkey; screenkey --position fixed --geometry 480x40+40+1320 --opacity 0.5 --timeout 1.5 --compr-cnt 1 --mods-only --key-mode composed --mods-mode normal --bak-mode full --no-systray" &




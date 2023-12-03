######## Dependence ########
# xdg-open "https://github.com/criticalsoft/WorkFlow_KDE_Plasma"




######## Install ########
mkdir -p ~/.local/share/kwin/scripts/
mkdir -p ~/.local/share/kservices5/


rm -rf ~/.local/share/kwin/scripts/GridWM/
cp -r ./GridWM/ ~/.local/share/kwin/scripts/
#Enable KWin Scripts Configure Button
ln -sf ~/.local/share/kwin/scripts/GridWM/metadata.desktop ~/.local/share/kservices5/GridWM.desktop




######## Restart Service ########
tee ~/.local/share/applications/plasma_restart.desktop << EOF
[Desktop Entry]
Name=Plasma Restart
Exec=kquitapp5 plasmashell; plasmashell &
Icon=preferences-system-windows-actions
Type=Application
# I3WM / Sway + PlasmaPanel
# OnlyShowIn=KDE;
EOF

tee ~/.local/share/applications/kwin_replace.desktop << EOF
[Desktop Entry]
Name=KWin Replace
# Exec=qdbus org.kde.KWin /KWin reconfigure
# Exec=kwin_x11 --replace &
Exec=kwin --replace &
Icon=kwin
Type=Application
OnlyShowIn=KDE;
EOF




# Clear Old ShortCut Key
# xdg-open ~/.config/kglobalshortcutsrc
# kquitapp5 kglobalaccel; kglobalaccel5 &
# kquitapp5 plasmashell; plasmashell &
# kwin --replace &
# kcmshell5 keys
# ReLogIn




# FIX: DidNot Automatically Runing After Fresh Install
# notify-send --icon=application-x-plasma --expire-time=0 --app-name="KWin Scripts" "
# UnCheck & Check
# "
# kcmshell5 kwinscripts
kcmshell5 kcm_kwin_scripts
# bash -c "kwin --replace &"
# ReLogIn


# notify-send --icon=application-x-plasma --expire-time=0 --app-name="KWin Scripts" "
# Focus | Window activation policy: Focus follows mouse
# Raising windows: Raise on hover
# "
# notify-send --icon=application-x-plasma --expire-time=0 --app-name="KWin Scripts" "
# Window Actions | click: Activate, raise and pass click
# Modifier key: Meta + Move, Do nothing, Resize, Maximize/restore
# "
kcmshell5 kwinoptions




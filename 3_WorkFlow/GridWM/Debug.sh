# mkdir ~/.local/share/applications/
# tee ~/.local/share/applications/plasmashell_interactive_console.desktop << EOF
# [Desktop Entry]
# Name=PlasmaShell Interactive Console
# Exec=/usr/bin/plasma-interactiveconsole --kwin
# # Exec=qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.showInteractiveConsole
# # Exec=qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.showInteractiveKWinConsole
# Icon=plasmashell
# Type=Application
# EOF


# notify-send --icon=application-x-plasma --expire-time=0 --app-name='PlasmaShell Interactive Console' 'Danger: 1. Open > Modify > Open Same File / Clear > You Will Lost All Modification 2. Launch App > Open File > Ctrl + S Working, Close App > Launch > Ctrl + S DoesNot Save To Original File 3. Some Times Code Not Update If KWin Script Running 4. CanNot Remember Open / Save As Path After ReLaunch / Execute 5. It Crash Plasma When Close 6. DoesNot Have Error Line Number'




# # FIX: print() Not Working
# # Run In konsole

# SCRIPT=~/.local/share/kwin/scripts/GridWM/contents/code/main.js
# # SCRIPT=./GridWM/contents/code/main.js

# #dbus-send --print-reply --dest=org.kde.KWin /Scripting org.kde.kwin.Scripting.unloadScript string:"$SCRIPT"
# #num=$(dbus-send --print-reply --dest=org.kde.KWin /Scripting org.kde.kwin.Scripting.loadScript string:"$SCRIPT" | awk 'END {print $2}')
# #dbus-send --print-reply --dest=org.kde.KWin /$num org.kde.kwin.Scripting.run

# qdbus org.kde.KWin /Scripting unloadScript $SCRIPT
# num=$(qdbus org.kde.KWin /Scripting loadScript $SCRIPT)
# qdbus org.kde.KWin /$num run

# # kwin --replace &




# Run KWin Script, Open With Interactive Console KWin Execute
# kwin --replace &




# https://develop.kde.org/docs/plasma/kwin/
journalctl -g "GridWM" -f
bash -c "kwin --replace &"




sudo apt install -y konsole

#Cannot Use Different Sections In org.kde.konsole.desktop
#sudo sed -i "/Exec=/c\Exec=konsole --workdir /home/$USER/Desktop/ %U" /usr/share/applications/org.kde.konsole.desktop


tee ~/.local/share/applications/org.kde.konsole.desktop << EOF
[Desktop Entry]
Type=Application
TryExec=konsole
Exec=konsole
Icon=utilities-terminal
Categories=Qt;KDE;System;TerminalEmulator;
Actions=NewWindow;NewTab;
X-DocPath=konsole/index.html
X-DBUS-StartupType=Unique
X-KDE-AuthorizeAction=shell_access
X-KDE-Shortcuts=Ctrl+Alt+T
StartupWMClass=konsole
Keywords=terminal;console;script;run;execute;command;command-line;commandline;cli;bash;sh;shell;zsh;cmd;command prompt
Name=Konsole
GenericName=Terminal
Comment=Command line access

# FIX: Another Screen Taskbar Loading (When Recording)
StartupNotify=false

[Desktop Action NewWindow]
Name=Open a New Window
Icon=window-new
Exec=konsole

[Desktop Action NewTab]
Name=Open a New Tab
Icon=tab-new
Exec=konsole --new-tab
EOF




#ToolBar Icon DEP (ZModem Upload)
sudo apt install -y lrzsz




cd ./CONFIG/
./Restore.sh
cd ../




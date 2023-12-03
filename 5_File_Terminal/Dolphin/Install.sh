#Too many app doesnot use
#sudo apt install -y kde-applications

#Konqueror Kwrite etc
#sudo apt install -y kdebase-apps
#sudo apt install -y kde-baseapps

sudo apt install -y dolphin
sudo apt install -y dolphin-plugins




cd ./CONFIG/
./Restore.sh
cd ../

# FIX: Double Click Open In Tab (Old Version No Need)
# Debian Testing
sudo sed -i "/Exec=/c\Exec=dolphin --new-window %u" /usr/share/applications/org.kde.dolphin.desktop
# Debian Stable
# sudo sed -i "/Exec=/c\Exec=dolphin %u" /usr/share/applications/org.kde.dolphin.desktop


tee ~/.local/share/applications/org.kde.dolphin.desktop << EOF
[Desktop Entry]
Name=Dolphin
Exec=dolphin %u
Icon=system-file-manager
Type=Application
X-DocPath=dolphin/index.html
Categories=Qt;KDE;System;FileTools;FileManager;
GenericName=File Manager
MimeType=inode/directory;
InitialPreference=10
Keywords=files;file management;file browsing;samba;network shares;Explorer;Finder;
X-DBUS-ServiceName=org.kde.dolphin
X-KDE-Shortcuts=Meta+E
StartupWMClass=Dolphin
# FIX: Another Screen Taskbar Loading (When Recording)
StartupNotify=false
EOF


#FIX:Cannot See MTP Devices
#Testing BuiltIn
#sudo apt install -y kio-extras




#kcmshell5 componentchooser




#ToolBar Compare Files Icon DEP
sudo apt install -y kompare

#ToolBar Open Preferred Search Tool DEP
sudo apt install -y kfind

#ToolBar Stash Icon DEP
# Stable DoesNot Have, Testing Has
# sudo apt install -y kio-stash




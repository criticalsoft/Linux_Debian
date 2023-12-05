sudo apt install -y yad




#/usr/share/kservices5/ServiceMenus/
cp -r ./ServiceMenus/ ~/.local/share/kservices5/




mkdir -p ~/.local/share/applications/


#FIX: CanNot Open .url .desktop .webloc File
#tee ~/.local/share/applications/open_link.desktop << EOF
#[Desktop Entry]
#Name=Open Link File
#Exec=xdg-open %U
#Icon=web-browser
#Type=Application
#EOF


# Open Windows Explorer Link
tee ~/.local/share/applications/open_url.desktop << EOF
[Desktop Entry]
Name=Open URL File
Exec=cat %f |grep ^URL.*= |cut -f2- -d'=' |xargs xdg-open
Icon=web-browser
Type=Application
EOF


# Open Linux Dolphin Link
tee ~/.local/share/applications/open_desktop.desktop << EOF
[Desktop Entry]
Name=Open DeskTop File
Exec=cat %f |grep ^URL.*= |cut -f2- -d'=' |xargs xdg-open
Icon=web-browser
Type=Application
EOF


# Open Macintosh Finder Link
tee ~/.local/share/applications/open_webloc.desktop << EOF
[Desktop Entry]
Name=Open WebLoc File
Exec=xmllint --xpath "string(//string)" %f |xargs xdg-open
Icon=web-browser
Type=Application
EOF




#FIX: Always Open With LibreOffice
xdg-settings set default-web-browser org.kde.falkon.desktop




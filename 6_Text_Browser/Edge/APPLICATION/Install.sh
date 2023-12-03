# sudo apt install -y fonts-liberation
# sudo apt install -y libu2f-udev
# 
# # sudo apt install -f
# 
# sudo dpkg -i ./*.deb

# whereis microsoft-edge




# https://answers.microsoft.com/en-us/microsoftedge/forum/all/100-working-how-to-install-microsoft-edge-for/1e2b56db-ffc4-480d-80ff-2517eecc6395

# FIX: The following signatures couldn't be verified because the public key is not available
# curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ./msedge.gpg
# sudo install -o $USER -g $USER -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
# sudo cp ./msedge.gpg /etc/apt/trusted.gpg.d/
# sudo chmod 755 /etc/apt/trusted.gpg.d/microsoft.gpg
# sudo chown $USER:$USER /etc/apt/trusted.gpg.d/microsoft.gpg
# rm ./msedge.gpg

# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
curl https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/msedge.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge.list'

sudo apt update

# FOR: Automatically Update With System
# sudo apt install -y microsoft-edge-dev
sudo apt install -y microsoft-edge-stable

# whereis microsoft-edge




# # Create App ShortCut
# microsoft-edge &
# sudo rm /usr/share/applications/microsoft-edge.desktop

mkdir -p ~/.local/share/applications/
tee ~/.local/share/applications/microsoft-edge.desktop << EOF
[Desktop Entry]
Name=Microsoft Edge
GenericName=Web Browser
# Exec=microsoft-edge --new-window %U
# FIX: This profile appears to be in use by another Microsoft Edge process
Exec=rm ~/.config/microsoft-edge/SingletonLock; microsoft-edge --new-window %U
Icon=microsoft-edge
Type=Application
Categories=Network;Browser;
StartupWMClass=MSEdge
StartupNotify=false
EOF

cp ./microsoft-edge.png ~/.local/share/icons/




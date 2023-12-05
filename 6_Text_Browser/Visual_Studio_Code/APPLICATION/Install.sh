# # FOR: OffLine Install
# # FOR: Install Everywhere (Linux Distro)
# # FOR: Keep Same Version (Prevent Config Conflict)
# tar xzf ./code-stable-*.tar.gz --directory ~/
# rm -rf ~/VSCode/
# mv ~/VSCode-*/ ~/VSCode/
# 
# # Add To User Path
# mkdir -p ~/.local/bin/
# ln -sf ~/VSCode/bin/code ~/.local/bin/code
# whereis code
# # ReLogIn




# https://code.visualstudio.com/docs/setup/linux

# FIX: The following signatures couldn't be verified because the public key is not available
# curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > ./vscode.gpg
# sudo install -o $USER -g $USER -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
# sudo cp ./vscode.gpg /etc/apt/trusted.gpg.d/
# sudo chmod 755 /etc/apt/trusted.gpg.d/microsoft.gpg
# sudo chown $USER:$USER /etc/apt/trusted.gpg.d/microsoft.gpg
# rm ./vscode.gpg

# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
curl https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vscode.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update

# FOR: Automatically Update With System
sudo apt install -y code

# whereis code




# FIX: Open Folder In New Window
# ~/VSCode/bin/code Supports --install-extension --help Command Line Option, ~/VSCode/code DoesNot

mkdir -p ~/.local/share/applications/
tee ~/.local/share/applications/code.desktop << EOF
[Desktop Entry]
Name=Visual Studio Code
GenericName=Development Tool
# Need ReLogIn
# Exec=code --no-sandbox --unity-launch --new-window %F
# Exec=/home/$USER/VSCode/bin/code --no-sandbox --unity-launch --new-window %F
Exec=code --no-sandbox --unity-launch --new-window %F
Icon=com.visualstudio.code
Type=Application
Categories=Development;Tool;
StartupWMClass=VSCode
StartupNotify=false
EOF

# FIX: Pined TaskBar Icon
# cp ~/VSCode/resources/app/resources/linux/code.png ~/.local/share/icons/com.visualstudio.code.png




cat /proc/sys/fs/inotify/max_user_watches
sudo tee --append /etc/sysctl.conf << EOF
fs.inotify.max_user_watches=524288
EOF
cat /proc/sys/fs/inotify/max_user_watches

# notify-send --icon=com.visualstudio.code --expire-time=0 --app-name="Visual Studio Code" "
# FIX: unable to watch for file changes
# sudo reboot
# "




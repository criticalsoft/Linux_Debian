#### Enable zsh Comment When Interactive Shell ####
# sudo tee --append /usr/share/zsh/manjaro-zsh-config << EOF
# setopt interactivecomments
# EOF

# setopt interactivecomments




#### bash Short Terminal Path ####

# Use export Only: Take Effect Now
tee --append ~/.bashrc << EOF
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]\$ "
EOF
# ReLaunch

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]\$ "

# ReLoad
# # source ~/.bashrc
# source ~/.profile

# notify-send --icon=konsole --expire-time=0 --app-name="Terminal" "
# Restart Terminal
# "




# FIX: Local Desktop File Location Missing
mkdir -p ~/.local/share/applications/

# FIX: AutoStart Folder Missing
# KeyBoard NetHogs KeePassXC
mkdir -p ~/.config/autostart/

# FIX: Some App Icon DoesNot ShowUp In Launcher
# EG: FireFox Otter KeePassXC PostMan
mkdir -p ~/.local/share/icons/

# Visual Studio Code, Falkon
# Add To User Path
mkdir -p ~/.local/bin/
# ReLogIn

# ~/.profile Not Work In Some Distro (eg: Arch Fcitx)
mkdir -p ~/.config/environment.d/

# Dolphin Action
mkdir -p ~/.local/share/kservices5/ServiceMenus/




#DEP: Apple Driver
sudo apt install -y dkms

# Stable DoesNot Have, Testing Has
# sudo apt install -y linux-headers-generic
# sudo apt install -y linux-headers-$(uname -r)




# Time Sync
# FIX APT: Certificate verification failed: The certificate is NOT trusted
# FIX: Release file for ... is not valid yet (invalid for another ...)
# FIX OTP: Enter code from app
sudo apt install -y ntp

# Sync Time
# sudo hwclock --hctosys
# Date and Time | Set date and time automatically




# sudo apt-mark hold Package ......
# dpkg --get-selections |grep hold




# FOR: DIY Script Tool
# DEP: CaCaPlayer
# DEP: mkusb (Multiple Partition With Persistence)
sudo apt install -y zenity

#FOR: CLI Shell Script (Kate Falkon Glass kdesrc-build)
sudo apt install -y dialog

# FIX: notify-send command not found
sudo apt install -y libnotify-bin

# Plasma Copy Paste TimeStamp
# Open Cubic Player Copy Paste URL
sudo apt install -y xclip




# FOR: Show System Information In Terminal
sudo apt install -y neofetch




sudo apt install -y xtrlock

tee ~/.local/share/applications/xtrlock.desktop << EOF
[Desktop Entry]
Name=XTRLock
Exec=xtrlock
Icon=system-lock-screen
Type=Application

# FIX: Another Screen Taskbar Loading (When Recording)
StartupNotify=false
EOF




# FIX:bash: killall: command not found
# Stable BuiltIn, Testing BuiltIn, Sid BuiltIn
# sudo apt install -y psmisc




# Stable Doesnot Have, Testing Has
sudo apt install -y calamares
# FIX: CanNot Launch InSide Live Build
sudo apt install -y calamares-settings-debian
sudo apt install -y calamares-extensions




sudo apt install -y efibootmgr




sudo apt install -y tree




sudo apt install -y htop




#FOR: Quickly BackUp Package_Cache
sudo apt install -y rsync

#WineHQ Key
sudo apt install -y wget

#FOR:Visual Studio Code, NodeJS Install
sudo apt install -y curl




# ENV: Kvantum Compile
sudo apt install -y cmake
sudo apt install -y cmake-extras

sudo apt install -y gcc g++




# ENV: Apply Patch To Source Before Compile (eg: Mullvad I3WM)
sudo apt install -y patch




# ENV: I3WM Sway Compile
sudo apt install -y meson




# Kernel Verion
# https://en.wikipedia.org/wiki/Debian_version_history

# Generator
# https://debgen.simplylinux.ch/

echo $(lsb_release -cs)




# FIX: Must put some 'deb-src' URIs in your sources.list
# sudo apt build-dep Some Software eg Kate Glass, Falkon Glass




# notify-send --icon=applications-internet --expire-time=0 --app-name="Package" "
# Optional Sources:
# Check: Source code repositories
# "
# software-properties-gtk




################################################################################################
# If You Need Build Some Thing New DoNot Use System Package (Not New Enough, Dependency Build Error With Git Source)
# Compile Only Modified, Other Use System Package: Compile Time Error & RunTime Error (SID New Version Also Need New Git Dependency)
# Use Stable Version + Use Official Git Source


# # UnStable
# # SID Some Times After Reboot Activities Broken
# # Some Version (Free & NonFree) Erease Entire System When Dist Upgrade
# # Testing DoesNot Have GUFW
# # SomeTimes Broken System
# # http Not Secure
# sudo tee /etc/apt/sources.list << EOF
# deb https://deb.debian.org/debian/ unstable main contrib non-free non-free-firmware
# deb-src https://deb.debian.org/debian/ unstable main contrib non-free non-free-firmware
# EOF


# Testing (debian-live-testing-amd64-kde+nonfree.iso)
# Some Version (Free & NonFree) Erease Entire System When Dist Upgrade
# CanNot Install Lutris (Need New Package)
# DoesNot Have Some Package (Compile Git VirtualBox)
# http Not Secure
# HTTPS Prevent Man In The Middle Attack
sudo tee /etc/apt/sources.list << EOF
deb https://deb.debian.org/debian/ testing main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian/ testing main contrib non-free non-free-firmware

deb https://deb.debian.org/debian/ testing-updates main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian/ testing-updates main contrib non-free non-free-firmware

deb https://deb.debian.org/debian-security testing-security main
deb-src https://deb.debian.org/debian-security testing-security main
EOF


# # Stable (debian-live-11.4.0-amd64-kde+nonfree.iso)
# # http Not Secure
# sudo tee /etc/apt/sources.list << EOF
# deb https://deb.debian.org/debian/ stable main contrib non-free
# deb-src https://deb.debian.org/debian/ stable main contrib non-free
#
# deb https://deb.debian.org/debian/ stable-updates main contrib non-free
# deb-src https://deb.debian.org/debian/ stable-updates main contrib non-free
#
# deb https://security.debian.org/debian-security/ stable-security main
# deb-src https://security.debian.org/debian-security/ stable-security main
#
# # deb https://ftp.debian.org/debian/ buster-backports main
# # deb-src https://ftp.debian.org/debian/ buster-backports main
# EOF
################################################################################################




# FIX:package architecture (i386) does not match system (amd64)
# add-architecture i386, Nothing will really change until you do an apt update
# FOR:TeamViewer, WineHQ Staging, Skype
sudo dpkg --add-architecture i386

# FIX:Skipping acquire of configured file
# (Debian Ports) doesn't support architecture 'i386'
# sudo apt purge `dpkg --get-selections | grep i386 | awk '{print $1}'`
# sudo dpkg --remove-architecture i386

# Enable Install Different Distro Version of Package
# FOR: Install Old Version Of LibSSL 1.0
# Testing DoesNot Exist, Stable Has
# sudo apt install -y multiarch-support




# If you change distro (repository), Get new package list
# Must Update First Or You Cannot Install Any Package Later
# This Also Renew Keys
sudo apt update
# apt list --upgradable




# Resolve Possible Dependency Error
sudo apt install -f




notify-send --icon=applications-internet --expire-time=0 --app-name="Package" "
Upgrade May Broke System
Read Package List Carefully
"

# Do not use -y option, UnStable sources often have fatal errors, May remove entire system
# sudo apt upgrade
# sudo apt dist-upgrade
sudo apt full-upgrade -y




# Full Download After Delete Cache Files
# WithOut This --download-only May Crash System
sudo apt install --download-only -y $(dpkg -l | grep "^ii"| awk ' {print $2} ' | xargs)
# CHECK
# dpkg -l | grep "^ii"| awk ' {print $2} ' >> ./list.txt




# Reduce Backup Size (Safe)
sudo apt autoremove -y




########Package Install DEP########
# wget -O - https://www.ports.debian.org/archive_2018.key | sudo apt-key add -
# sudo apt install -y debian-ports-archive-keyring




# The method driver https could not be found eg: WineHQ https Repository
sudo apt install -y apt-transport-https




# mkdir -p ~/.local/share/applications/
# tee ~/.local/share/applications/upgrade_system.desktop << EOF
# [Desktop Entry]
# Name=Upgrade System
# Exec=synaptic-pkexec --update-at-startup
# Icon=synaptic
# Type=Application
# EOF




# ENV: AIVA
# ENV: Cool Retro Term
# ENV: Scrcpy
# ENV: SimpleScreenRecorder
# ENV: KRecorder
sudo apt install -y snapd
# sudo systemctl start snapd
# sudo systemctl status snapd

# DoesNot Support Chroot
# sudo snap install core

# sudo snap install hello-world
# hello-world

tee --append ~/.profile << EOF
PATH="/snap/bin/:\$PATH"
EOF
# ReLogIn




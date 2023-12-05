# FIX: Dolphin CanNot Remember BitLocker Password
# FIX: Debian KDE Wallet Service (Seems that your system has no keys suitable for encryption)
# FOR: Falkon Login Password
# FOR: Samba Login Password
# FOR: Network Manager Password
sudo apt install -y kgpg

notify-send --icon=kgpg --expire-time=0 --app-name="KGpg" "
KGpg Assistant: Next Next Next Finish
Name: MYKEY OK Continue OK OK
Status and Notifications (Show hidden icons) -> KGpg
Keys -> Generate Key Pair
"
# notify-send --icon=kgpg --expire-time=0 --app-name="KGpg" "
# Set Blank Password
# "

# kgpg &
bash -c "kgpg &"




# FIX: Dolphin Falkon DoesNot Save Password
# rm ~/.config/kwalletrc
# rm ~/.config/kwalletmanager5rc

notify-send --icon=kgpg --expire-time=0 --app-name="KGpg" "
Show manager in system tray
"
systemsettings5 kwalletconfig5

bash -c "kwalletmanager5 &"




# FIX: Auto Login (Set Gpg Blank Password)
# sudo apt install -y kleopatra
# sudo apt purge kleopatra




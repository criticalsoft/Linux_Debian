#cat /usr/share/X11/xkb/rules/base.lst |grep caps -A 3 -B 3

# sudo mkdir -p /etc/X11/xorg.conf.d/
# sudo tee /etc/X11/xorg.conf.d/keyboard_pc.conf << EOF
# Section "InputClass"
#         Identifier "system-keyboard"
#         MatchProduct "DREVO.Inc BladeMaster TE 87K Keyboard"
#         MatchIsKeyboard "on"

#         Option "XkbLayout" "us"

#         #Option "XkbOptions" "caps:hyper"
        
#         #Test
#         #Option "XkbOptions" "ralt:XF86PowerOff"
# EndSection
# EOF




# https://wiki.linuxquestions.org/wiki/XF86_keyboard_symbols

# Get Key Code
# xev
# xmodmap -pke |grep Alt
# 
# Single Key To Modifier Key
# keycode 66 = Hyper_L
# Modifier Key To Single Key
# keycode 134 = XF86PowerOff
# Return And Enter Is Differrent In Visual Studio Code

# UpperCase (~/.xinitrc)
tee ~/.Xmodmap << EOF
!Grave
keycode 49 = BackSpace

!BackSpace
keycode 22 = grave asciitilde

!Caps_Lock
keycode 66 = Return

!Return
!keycode 36 = Caps_Lock
keycode 36 = XF86Launch1
EOF
#ReLogIn




#~/.profile /etc/init.d/ Working With KDE, Not Compatible With Gnome
tee ~/.config/Keyboard_PC.sh << EOF
#Reset Modified Key Map
setxkbmap -layout us
#Disable CapsLock Status
setxkbmap -option caps:none

#FIX:SomeTimes Not Work
#ReLoad
setxkbmap -layout us
bash -c 'xmodmap ~/.Xmodmap' &
EOF
# sudo chmod 770 ~/.config/Keyboard_PC.sh
sudo chmod +x ~/.config/Keyboard_PC.sh


tee ~/.local/share/applications/keyboard_mod_pc.desktop << EOF
[Desktop Entry]
Name=Keyboard MOD PC
Exec=bash -c 'sleep 5 && $HOME/.config/Keyboard_PC.sh'
Icon=preferences-desktop-keyboard
Type=Application
# FIX: Another Screen Taskbar Loading (When Recording)
StartupNotify=false
EOF
ln -sf ~/.local/share/applications/keyboard_mod_pc.desktop ~/.config/autostart/


# FIX: Not Work In Arch
# https://wiki.archlinux.org/title/environment_variables
# tee --append ~/.config/environment.d/driver.conf << EOF
# sudo tee --append /etc/environment << EOF
# tee --append ~/.profile << EOF
# $HOME/.config/Keyboard_PC.sh
# EOF


bash -c '~/.config/Keyboard_PC.sh' &




# sudo apt install -y xdotool
# sudo apt install -y xbindkeys

# tee ~/.xbindkeys_pc << EOF
# "xdotool key --clearmodifiers Ctrl+w"
#     capslock
# EOF

# tee ~/.local/share/applications/keyboard_bind_pc.desktop << EOF
# [Desktop Entry]
# Name=Keyboard Bind PC
# Exec=bash -c 'xbindkeys --file $HOME/.xbindkeys_pc' &
# Icon=keyboard
# Type=Application
# EOF
# ln -sf ~/.local/share/applications/keyboard_bind_pc.desktop ~/.config/autostart/
# bash -c 'xbindkeys --file $HOME/.xbindkeys_pc' &





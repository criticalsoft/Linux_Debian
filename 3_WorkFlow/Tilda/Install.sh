# sudo apt install -y nethogs
# /usr/sbin/nethogs -s -v 1 -a

# sudo setcap "cap_net_admin,cap_net_raw=epi" /usr/sbin/nethogs




# sudo apt install -y iftop
# 
# # Remove Admin Permission
# # e: Effective: This means the capability is “activated”.
# # p: Permitted: This means the capability can be used/is allowed.
# # i: Inherited: The capability is kept by child/subprocesses upon execve() for example.
# sudo setcap "cap_net_admin,cap_net_raw=epi" /usr/sbin/iftop




#Background Not Transparent
#Use Task Manager
#sudo apt install -y whowatch




#Colored, Not Transparent (Curses UI)
#sudo apt install -y lnav

#Transparent, CanNot Directly Scroll
#sudo apt install -y multitail
#sudo multitail -s 2 /var/log/auth.log /var/log/user.log




sudo apt install -y net-tools
# netstat --wide --symbolic --extend --programs --continuous
# netstat --wide --symbolic --extend --programs --continuous --tcp --udp




sudo apt install -y rsyslog
# sudo tail -f /var/log/auth.log




sudo apt install -y tilda



killall tilda

# cd ./
./Restore.sh
# cd ./

bash -c 'tilda --hidden --background-alpha 50 --config-file "/home/$USER/.config/tilda/config_0"' &
bash -c 'tilda --hidden --background-alpha 50 --config-file "/home/$USER/.config/tilda/config_1"' &




tee ~/.local/share/applications/net_log.desktop << EOF
[Desktop Entry]
Name=Net Log
Exec=tilda --hidden --background-alpha 50 --config-file "/home/$USER/.config/tilda/config_0"
Icon=tilda
Type=Application
EOF
ln -sf ~/.local/share/applications/net_log.desktop ~/.config/autostart/


tee ~/.local/share/applications/auth_log.desktop << EOF
[Desktop Entry]
Name=Auth Log
Exec=tilda --hidden --background-alpha 50 --config-file "/home/$USER/.config/tilda/config_1"
Icon=tilda
Type=Application
EOF
ln -sf ~/.local/share/applications/auth_log.desktop ~/.config/autostart/




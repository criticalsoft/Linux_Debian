sudo apt install -y gnome-calculator
#Panel Single Instance
#sudo sed -i "/Exec=/c\Exec=if [ \`xwininfo -name 'Calculator' |wc -l\` -eq 0 ]; then gnome-calculator; else if [ \`xwininfo -name 'Calculator' |grep IsViewable |wc -l\` -eq 0 ]; then xdotool search --class 'Gnome-calculator' windowactivate %@; else xdotool search --class 'Gnome-calculator' windowminimize %@; fi; fi &" /usr/share/applications/org.gnome.Calculator.desktop




#Use Gnome Calculator
#sudo emerge speedcrunch




# Not BuildIn Live Build
#sudo emerge kcalc
sudo apt install -y kcalc
#Panel Single Instance
#sudo sed -i "/Exec=/c\Exec=if [ \`xwininfo -name 'KCalc' |wc -l\` -eq 0 ]; then kcalc; else if [ \`xwininfo -name KCalc |grep IsViewable |wc -l\` -eq 0 ]; then xdotool search --class KCalc windowactivate %@; else xdotool search --class KCalc windowminimize %@; fi; fi &" /usr/share/applications/org.kde.kcalc.desktop




####DoNot Use SystemTray, Launch Multiple Instance From Panel####
#DEP:
#sudo apt install -y wininfo
#Use:
#xwininfo


#FIX: xwininfo Map State Not Work: Compositor -> Keep window thumbnails: Only for Shown Windows
#tc="xdotool search --class 'kcalc'"
#tee ~/KCalc_Single_Instance.sh << EOF
##/bin/sh
#if [ \`$tc |wc -l\` -eq 0 ]; then
#    kcalc
#else if [ \`xwininfo -id \$($tc |tail -1) |grep IsViewable |wc -l\` -eq 0 ]; then
#    $tc windowactivate %@
#else
#    $tc windowminimize %@
#fi;
#fi &
#EOF
#sudo chmod +x ~/KCalc_Single_Instance.sh

#sudo sed -i "/Exec=/c\Exec=bash -c '/home/$USER/KCalc_Single_Instance.sh'" /usr/share/applications/org.kde.kcalc.desktop

#ln -sf /usr/share/applications/org.kde.kcalc.desktop ~/.config/autostart/





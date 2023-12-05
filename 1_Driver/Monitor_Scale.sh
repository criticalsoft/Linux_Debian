#FOR: Prevent Mouse Ghost Shadow After Resolution Change
sudo apt install -y unclutter

# Low Based (No Meaning)
# bash -c "unclutter -idle 0 & xrandr --output DisplayPort-3 --pos 0x144 --mode 3440x1440 --scale 0.65x0.65 --primary --output DisplayPort-2 --pos 2236x0 --mode 1920x1080 --scale 1x1; killall unclutter;" &
# High Based
# bash -c "xrandr --output DisplayPort-3 --pos 0x180 --mode 3440x1440 --scale 1x1 --primary --output DisplayPort-2 --pos 3440x0 --mode 1920x1080 --scale 1.5x1.5;" &




xrandr | grep connected

# I3WM Sway + CairoDock Multiple Screen
tee ~/.config/Monitor_Scale_FIX.sh << EOF
# sleep 5; unclutter -idle 0 & xrandr --output DisplayPort-3 --pos 0x144 --mode 3440x1440 --scale 0.65x0.65 --primary --output DisplayPort-2 --pos 2236x0 --mode 1920x1080 --scale 1x1; killall unclutter;

# Company
if cat /proc/cpuinfo |grep 'model name' |grep 'AMD Ryzen 5 5600X'
then
unclutter -idle 0 & xrandr --output DisplayPort-2 --pos 0x0 --mode 2560x1440 --scale 1x1 --primary --output HDMI-A-0 --pos 2560x0 --mode 1920x1080 --scale 1.33x1.33; killall unclutter;
fi

# Home
if cat /proc/cpuinfo |grep 'model name' |grep 'Intel(R) Core(TM) i7-3770'
then
unclutter -idle 0 & xrandr --output DisplayPort-2 --pos 0x180 --mode 3440x1440 --scale 1x1 --primary --output DisplayPort-3 --pos 3440x0 --mode 1920x1080 --scale 1.5x1.5; killall unclutter;
fi

# kwin --replace &
bash -c "kquitapp5 plasmashell; plasmashell &"
EOF
sudo chmod +x ~/.config/Monitor_Scale_FIX.sh


tee ~/.local/share/applications/monitor_scale.desktop << EOF
[Desktop Entry]
Name=Monitor Scale
# Exec=bash -c 'sleep 10 && $HOME/.config/Monitor_Scale_FIX.sh'
Exec=bash -c 'sleep 5 && $HOME/.config/Monitor_Scale_FIX.sh'
Icon=preferences-desktop-display
Type=Application
# FIX: Another Screen Taskbar Loading (When Recording)
StartupNotify=false
EOF
ln -sf ~/.local/share/applications/monitor_scale.desktop ~/.config/autostart/


# FIX: Not Work In Arch
# https://wiki.archlinux.org/title/environment_variables
# tee --append ~/.config/environment.d/driver.conf << EOF
# sudo tee --append /etc/environment << EOF
# tee --append ~/.profile << EOF
# $HOME/.config/Monitor_Scale_FIX.sh
# EOF


bash -c '~/.config/Monitor_Scale_FIX.sh' &




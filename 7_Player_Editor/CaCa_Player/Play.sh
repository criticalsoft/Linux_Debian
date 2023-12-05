#!/bin/bash




Path=`zenity --file-selection --directory --filename=$HOME/ --title="CaCaPlayer"`

# Falkon
# Path=`xclip -out`
# Dolphin
# Path=`xclip -sel clip -out`




if [ -z $Path ];then
    Path="You didnot enter any Path"
else
    Path=$(echo $Path |cut -f4- -d' ')
    Path='$(echo $Path)'/*
    echo $Path

    #konsole -e mpv --shuffle --loop-playlist -vo=caca $Path
    eval CACA_DRIVER=ncurses konsole --hold -e mplayer -really-quiet -vo caca $Path
fi




# Use

# CACA_DRIVER=ncurses mplayer -really-quiet -vo caca ./VOD.mp4

# CACA_DRIVER=ncurses xfce4-terminal --geometry 207x61+140+140 --hide-menubar --hide-toolbar --hide-borders --hide-scrollbar -e "mplayer -really-quiet -vo caca ./VOD.mp4" &

# mpv --term-status-msg=no --shuffle --loop-playlist -vo=caca ./VOD.mp4

# CACA_DRIVER=ncurses xfce4-terminal --geometry 207x61+140+140 --hide-menubar --hide-toolbar --hide-borders --hide-scrollbar -e "mpv --term-status-msg=no --shuffle --loop-playlist -vo=caca ./VOD.mp4" &





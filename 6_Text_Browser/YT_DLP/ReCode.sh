#!/bin/bash
# URL=`zenity --text-info --editable --title="YouTube DLZ"`

# Falkon
# URL=`xclip -out`
# Dolphin
URL=`xclip -sel clip -out`
echo $URL
# EXE=youtube-dl
EXE=yt-dlp

if [ -z $URL ];then
    content="You didnot enter any URL"
else
    eval konsole --workdir /media/$USER/DATA/DESKTOP/ -e $EXE --format bestvideo+bestaudio/best --playlist-start 1 --playlist-end 5000 --ignore-errors --recode-video mp4 "$URL"
    # $EXE --format bestvideo+bestaudio/best --playlist-start 1 --playlist-end 5000 --ignore-errors https://www.youtube.com/playlist?list=LIST_ID
    # $EXE --format bestvideo+bestaudio/best --ignore-errors --match-title '(360|180|VR)' https://www.youtube.com/c/CHANEL/videos
fi


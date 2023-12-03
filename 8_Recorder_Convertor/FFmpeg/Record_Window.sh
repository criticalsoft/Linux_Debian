#COMMAND


#-i 0 = default Audio Device
#-pass 1 FIX: 90%+ High CPU
#xprop
clear
ffmpeg -nostdin -loglevel quiet -show_region 1 -draw_mouse 0 -video_size 2070x1160 -framerate 30 -f x11grab -i :0.0+140,140 -ac 2 -f pulse -i 0 -c:a libmp3lame -c:v libx264 -b:v 10M -pass 1 -y ./REC.mp4 &


#COMMAND


clear
killall ffmpeg





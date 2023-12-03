#Use a newer ffmpeg as Opus in MP4 is no longer experimental in newer ffmpeg versions.
#Or add -strict experimental (or the alias -strict -2) if you are stuck with outdated ffmpeg.
#Fast But Not All Player Support
ffmpeg -i input.webm -c copy -strict experimental -y output.mp4



# rgba AVI Logo To rgba WEBM Logo
ffmpeg -i .\PROJECT.avi -y .\PROJECT.webm




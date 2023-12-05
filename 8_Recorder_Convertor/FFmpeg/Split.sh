#Split (mp4)
ffmpeg -i 2019.06.30-11.30.mp4 -ss 00:00:00.000 -to 00:08:35.566 -c copy 001.mp4


#Join (mp4)
#(FOR: mpeg-1 mpeg-2), mp4 Will Just Copy First File
#ffmpeg -i "concat:001.mp4|002.mp4|003.mp4|004.mp4" -c copy 999.mp4

printf "file 001.mp4\nfile 002.mp4\nfile 003.mp4\nfile 004.mp4\n" > 999.list
ffmpeg -f concat -i 999.list -c copy 999.mp4


#Muxing (m4v aac) (Premiere Combine No Space After Render)
ffmpeg.exe -i .\PROJECT_4318.8564.12240.m4v -i .\PROJECT_4318.8564.12240.aac -acodec copy -vcodec copy E:\PROJECT_4318.mp4





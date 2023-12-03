#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -r ./ssr/
# cp -r ~/snap/simplescreenrecorder/current/.ssr/ ./ssr/
cp -r ~/snap/simplescreenrecorder/*/.ssr/ ./ssr/




rm -r ./ssr_$DATE/
cp -r ./ssr/ ./ssr_$DATE/




# sync
# echo SYNC




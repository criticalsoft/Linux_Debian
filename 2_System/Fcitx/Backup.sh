#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




# cp -r ~/.config/fcitx/ ./fcitx/
# cp -r ~/.config/fcitx/ ./fcitx_$DATE/

rm -r ./fcitx5/
cp -r ~/.config/fcitx5/ ./fcitx5/

rm -r ./fcitx5_$DATE/
cp -r ./fcitx5/ ./fcitx5_$DATE/




# sync
# echo SYNC




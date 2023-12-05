#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -r ./tilda/
cp -r ~/.config/tilda/ ./




rm -r ./tilda_$DATE/
cp -r ./tilda/ ./tilda_$DATE/




# sync
# echo SYNC





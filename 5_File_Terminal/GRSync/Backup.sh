# Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -r ./grsync/
cp -r ~/.grsync/ ./grsync/


rm -r ./grsync_$DATE/
cp -r ./grsync/ ./grsync_$DATE/




# sync
# echo SYNC




#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




# rm -rf ./gufw/
# mkdir -p ./gufw/
# sudo cp -r /etc/gufw/gufw.cfg ./gufw/
# sudo cp -r /etc/gufw/Config.profile ./gufw/


rm -rf ./gufw/
sudo cp -r /etc/gufw/ ./

# FIX: FileNotFoundError No such file or directory
# rm -r ./*/app_profiles/


rm -rf ./gufw_$DATE/
cp -r ./gufw/ ./gufw_$DATE/




# sync
# echo SYNC




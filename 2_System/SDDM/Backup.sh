#Remove Folder & Symbolic Link
sudo rm -r /usr/share/sddm/themes/debian-*

rm -r ./Theme/
cp -r /usr/share/sddm/themes/ ./Theme/




rm -r ./KSplash/
cp -r ~/.local/share/plasma/look-and-feel/ ./KSplash/

#rm -r ./KSplash_$(date +"%Y%m%d")/
#cp -r ./KSplash/ ./KSplash_$(date +"%Y%m%d")/




# sync
# echo SYNC





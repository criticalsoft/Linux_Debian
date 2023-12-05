#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -rf ./Config/


#Configure
#Profile Index
mkdir -p ./Config/slot1/
cp -r ~/.config/konsole*rc ./Config/slot1/


#Shortcut
mkdir -p ./Config/slot2/
cp -r ~/.local/share/kxmlgui5/konsole/ ./Config/slot2/


#User Profile
#Color Scheme
#Transparent
rm -f ~/.local/share/konsole/Profile*.profile

mkdir -p ./Config/slot3/
cp -r ~/.local/share/konsole/ ./Config/slot3/




rm -rf ./Config_$DATE/
cp -r ./Config/ ./Config_$DATE/




# sync
# echo SYNC




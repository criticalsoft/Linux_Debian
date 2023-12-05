#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -rf ./Config/


#Configure
#Panel
mkdir -p ./Config/slot1/
cp -r ~/.config/dolphin*rc ./Config/slot1/


#ToolBar & Shortcut
mkdir -p ./Config/slot2/
cp -r ~/.local/share/kxmlgui5/dolphin/ ./Config/slot2/


#User Profile
#Adjust View Properties
#BookMarks
mkdir -p ./Config/slot3/
cp -r ~/.local/share/dolphin/ ./Config/slot3/




rm -rf ./Config_$DATE/
cp -r ./Config/ ./Config_$DATE/




# sync
# echo SYNC





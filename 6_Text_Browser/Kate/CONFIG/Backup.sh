#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -rf ./Config/


#Configure
#General
#Colors & Font (kateschemarc)
#Schema (katesyntaxhighlightingrc)
mkdir -p ./Config/slot1/
cp -r ~/.config/kate*rc ./Config/slot1/


#Toolbar & Shortcut
mkdir -p ./Config/slot2/
cp -r ~/.local/share/kxmlgui5/kate/ ./Config/slot2/


#User Profile
#Plugin Setting
mkdir -p ./Config/slot3/
cp -r ~/.local/share/kate/ ./Config/slot3/




cp -r ~/.local/share/org.kde.syntax-highlighting/ ./Config/




rm -rf ./Config_$DATE/
cp -r ./Config/ ./Config_$DATE/




# sync
# echo SYNC




ver=$(echo `blender --version |grep Blender` |grep -oP "\d\.\d*")

mkdir -p ~/.config/blender/$ver/

#Upgrade Old Version To New (Change Folder)
cp -r ./Blender\ Foundation/Blender/*/* ~/.config/blender/$ver/




# sync
# echo SYNC





rm -rf ./Blender\ Foundation/Blender/
mkdir -p ./Blender\ Foundation/Blender/




ver=$(echo `blender --version |grep Blender` |grep -oP "\d\.\d*")

#Save Only Current Version
cp -r ~/.config/blender/$ver/ ./Blender\ Foundation/Blender/




#rm -rf ./Config_$(date +"%Y%m%d")/
#cp -r ./Blender\ Foundation/Blender/ ./Config_$(date +"%Y%m%d")/

# sync
# echo SYNC





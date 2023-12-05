# FOR: Second Encrypt Partition (Remote Boot) On USB (LUKS Encryption + ext4 Format)
# FOR: Restore ISO Image To Device with Device and Password Confirm
sudo apt install -y gnome-disk-utility

# GParted支持MMC/SD Card
# FOR: Second partition on Live
sudo apt install -y gparted

sudo apt install -y partitionmanager
# exFAT Support (Ubuntu)
# sudo apt install -y exfat-fuse
# sudo apt install -y exfat-utils




# Recover Folder
# USE: from directory
# sudo ext4magic /dev/sdX -r -f /Dir
# USE: Recovers all files deleted the last 24 hours
# sudo ext4magic /dev/sdX -r
sudo apt install -y ext4magic

# Recover Partition Data / Partition Table
# USE: sudo testdisk /dev/sd[letter][number]
# 分析出分区 列出文件后 拷贝的时候选:h to hide deleted files, 不然拷出来的东西会很混乱
#
# If your other partition has left small space
# Recover to same partition is
# Extremely Dangerous !!!
sudo apt install -y testdisk




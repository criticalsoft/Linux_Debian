# FIX: Cannot Write: Use uid gid
sudo mount -t cifs //192.168.219.100/Desktop/ /mnt/ -o user=$USER,uid=$(id -u),gid=$(id -g)




# BookMark
# smb://ME@192.168.219.107/Desktop/




# Testing
# https://www.finnie.org/2009/07/26/keyfile-based-luks-encryption-in-debian/
# https://willhaley.com/blog/unlock-luks-volumes-with-usb-key/
# https://blog.fidelramos.net/software/unlock-luks-usb-drive
# https://dradisframework.com/support/guides/customization/auto-unlock-luks-encrypted-drive.html

# Working
# https://t.codebug.vip/questions-1787385.htm




#Comment (Must Keep Original crypttab Format, FOR: SomeThing Goes Wrong Revert)
#sudo nano /etc/crypttab
#sda5_crypt UUID=d5500e1a-e6d6-4902-b460-f41f2d4d820e none luks,swap,discard
#sda6_crypt UUID=f03c3317-4253-4612-b51c-dc40aaba18b4 none luks,discard

#If SomeThing Goes Wrong, Even With Live chroot
#CanNot Enter System
#update-initramfs Source mismatch
#cryptsetup: WARNING: target 'luks-cf929d86-cdd1-4fe5-bfdf-ec04294ec3e5' not found in /etc/crypttab

#Back up your initramfs disk
#cp /boot/initrd.img-X.Y.Z-N-amd64 /boot/initrd.img-X.Y.Z-N-amd64.safe

#Optionally add a new entry in the boot menu to fall back to the safe initramfs disk:
# sudo nano /boot/grub/grub.cfg
#Edit /boot/grub/grub.cfg to add the following:
#menuentry 'Debian GNU/Linux, with Linux 4.9.0-7-amd64 (crypto safe)' --class debian --class gnu-linux --class gnu --class os {
#       load_video
#       insmod gzio
#       insmod part_msdos
#       insmod ext2
#       set root='hd0,msdos1'
#       search --no-floppy --fs-uuid --set=root 2a5e9b7f-2128-4a50-83b6-d1c285410145
#       echo    'Loading Linux 4.9.0-7-amd64 ...'
#       linux   /vmlinuz-4.9.0-7-amd64 root=/dev/mapper/dradispro-root ro  quiet
#       echo    'Loading initial ramdisk ...'
#       initrd  /initrd.img-4.9.0-7-amd64.safe
#}




# Make Key File (Same As Delete Old Key)
# Run Once
dd if=/dev/urandom of=~/Desktop/Linux_Root.key bs=4096 count=1
mv ~/Desktop/Linux_Root.key /media/$USER/CCCOMA_X64FRE_EN_US_DV9/




lsblk -f

# lsblk -f |grep crypto_LUKS
lsblk -f |grep crypto_LUKS -A1

# lsblk -f | grep luks-




# Remove Key File
# sudo cryptsetup luksKillSlot /dev/sd_# #
# sudo cryptsetup luksKillSlot ${LUKS_DEVICE_SWAP} #

# SYSTEM (Graphic Installer)
# sudo cryptsetup luksDump /dev/sd_#
# Need Passphrase (Slot 0)
# MOUNTPOINTS /boot/efi, /, swap
sudo cryptsetup luksAddKey /dev/sd_# /media/$USER/CCCOMA_X64FRE_EN_US_DV9/Linux_Root.key
# sudo cryptsetup luksDump /dev/sd_#

# SWAP (Live Installer)
# sudo cryptsetup luksDump /dev/sd_#
# Need Passphrase (Slot 0)
# sudo cryptsetup luksAddKey /dev/sd_# /media/$USER/CCCOMA_X64FRE_EN_US_DV9/Linux_Root.key
# sudo cryptsetup luksDump /dev/sd_#




# Device luks-#### already exists (AlReady Opened)
# Test KEY File In Live
# sudo cryptsetup luksOpen /dev/sd_# /media/live/Test/ --key-file=/media/$USER/dlive1140kdamd64/Linux_Root.key




# Remove Key File, Not Remove PassWord (Passphrase Less)
# Tested: CanNot Pass Grub PassWord
# Tested: CanNot Mount In Live With PassWord Dialog
# If Lost Key File: /run/live/medium/Linux_Root.key
# Use: /crypto_keyfile.bin

# sudo cryptsetup luksRemoveKey /dev/sd_# --key-file /run/live/medium/Linux_Root.key
# sudo cryptsetup luksDump /dev/sd_#

# sudo cryptsetup luksRemoveKey ${LUKS_DEVICE_SWAP} --key-file /run/live/medium/Linux_Root.key
# sudo cryptsetup luksDump ${LUKS_DEVICE_SWAP}

# sudo cryptsetup luksAddKey /dev/sd_# --key-file /run/live/medium/Linux_Root.key
# sudo cryptsetup luksDump /dev/sd_#

# sudo cryptsetup luksAddKey ${LUKS_DEVICE_SWAP} --key-file /run/live/medium/Linux_Root.key
# sudo cryptsetup luksDump ${LUKS_DEVICE_SWAP}




#AutoMount USB KEY
#nofail Indicates that this is not a critical drive, and if a failure occurs, booting should continue normally
#sudo tee --append /etc/fstab << EOF
#LABEL=USB /media/$USER/dlive1140kdamd64/ auto defaults,nofail,uid=$USER,gid=$USER,locale=en_US.utf8 0 999
#EOF
#cat /etc/fstab

#/etc/crypttab is processed before /etc/fstab
#This tells the crypt software to mount KEY before processing /etc/crypttab
#sudo tee --append /etc/default/cryptdisks << EOF
#CRYPTDISKS_MOUNT="/media/$USER/dlive1140kdamd64/"
#EOF
#cat /etc/default/cryptdisks




#dmesg | grep usb |grep 'Ultra Luxe'

#Not Showing
#LUKS_KEY=/dev/sd_#
#LUKS_KEY_UUID=$(blkid | grep $LUKS_KEY | cut -d'"' -f4)

#lsblk -f |grep USB
#LUKS_KEY_UUID=####




# # LUKS Partition Root (├─sd_# ... UUID) (Not └─luks-#### UUID)
# LUKS_UUID_ROOT=
# LUKS_UUID_SWAP=
# 
# # LUKS Mapper Name (luks-UUID) (Not UUID)
# MAPPER_NAME_ROOT=
# MAPPER_NAME_SWAP=
# 
# # If the USB drive is not present it should fall back to reading the passphrase from keyboard in :## seconds
# sudo tee --append /etc/crypttab << EOF
# $MAPPER_NAME_ROOT UUID=$LUKS_UUID_ROOT /dev/disk/by-label/CCCOMA_X64FRE_EN_US_DV9:/Linux_Root.key luks,keyscript=/lib/cryptsetup/scripts/passdev
# $MAPPER_NAME_SWAP UUID=$LUKS_UUID_SWAP /dev/disk/by-label/CCCOMA_X64FRE_EN_US_DV9:/Linux_Root.key luks,keyscript=/lib/cryptsetup/scripts/passdev
# EOF




# Reference
sudo cat /etc/crypttab
# DEVICE: / /bot/efi /boot

# LUKS Mapper Name (luks-#### Live Installer / sd_#_crypt Graphic Installer)
MAPPER_NAME_ROOT=
# MAPPER_NAME_SWAP=

# LUKS Partition Root (UUID=####)
LUKS_UUID_ROOT=
# LUKS_UUID_SWAP=


# If the USB drive is not present it should fall back to reading the passphrase from keyboard in :## seconds
sudo tee --append /etc/crypttab << EOF
$MAPPER_NAME_ROOT $LUKS_UUID_ROOT /dev/disk/by-label/CCCOMA_X64FRE_EN_US_DV9:/Linux_Root.key luks,keyscript=/lib/cryptsetup/scripts/passdev
EOF
# $MAPPER_NAME_SWAP $LUKS_UUID_SWAP /dev/disk/by-label/CCCOMA_X64FRE_EN_US_DV9:/Linux_Root.key luks,keyscript=/lib/cryptsetup/scripts/passdev


# Comment Old, For Rescue
sudo nano /etc/crypttab

# Test (Because Some Distro Still Need Enter Password Before Grub Menu)
# UnPlug USB KEY, Enter Password




# sudo update-initramfs -u
sudo update-initramfs -u -k all

# cat /etc/mkinitcpio.d/linux515.preset
# sudo mkinitcpio -p linux515
# sudo nano /etc/mkinitcpio.conf
# sudo mkinitcpio -P

# sudo reboot




#Notes
#After LUKS is unlocked you should remove to USB key, cause the USB key device could may be accessed during normal system runtime by processes running with higher permissions as expected.

#NOTE: The keyfile on your USB drive is stored UNENCRYPTED. If you lose your USB key you MUST delete the corresponding slot from the LUKS device and add a new one.




# https://wiki.archlinux.org/title/dm-crypt/System_configuration
# https://wiki.archlinux.org/title/Dm-crypt/Device_encryption#Unlocking_the_root_partition_at_boot
# https://bbs.archlinux.org/viewtopic.php?id=230816

# https://askubuntu.com/questions/879013/avoid-grub2-password-protect-on-every-boot

# https://forum.manjaro.org/t/single-luks-password-prompt-before-grub-loads-preventing-easy-dual-boot-into-windows/85711/4

# https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system




# Make Key File (Same As Delete Old Key)
# Run Once
dd if=/dev/urandom of=/home/$USER/Desktop/Linux_Root.key bs=4096 count=1
mv /home/$USER/Desktop/Linux_Root.key /media/$USER/USB/




lsblk -f

# lsblk -f |grep crypto_LUKS
lsblk -f |grep crypto_LUKS -A1

# lsblk -f | grep luks-




# Remove Key File
# sudo cryptsetup luksDump /dev/sd_#
# sudo cryptsetup luksKillSlot /dev/sd_# #

# MOUNTPOINTS /boot/efi, /, swap
sudo cryptsetup luksAddKey /dev/sd_# /media/$USER/USB/Linux_Root.key
# sudo cryptsetup luksDump /dev/sd_#




# you cannot encrypt /boot/efi which is in the EFI partition; this is where GRUB resides. The one in the /boot directory is the Linux kernel, in which disk encryption is still possible

# Arch
sudo cat /etc/default/grub | grep GRUB_CMDLINE_LINUX=
sudo sed -i '/GRUB_CMDLINE_LINUX=/c\GRUB_CMDLINE_LINUX="cryptkey=/dev/disk/by-label/USB:ext4:/Linux_Root.key"' /etc/default/grub
sudo cat /etc/default/grub | grep GRUB_CMDLINE_LINUX=

# # Debian
# sudo cat /etc/grub.d/10_linux | grep GRUB_CMDLINE_LINUX=
# sudo sed -i '/GRUB_CMDLINE_LINUX=/c\GRUB_CMDLINE_LINUX="cryptkey=/dev/disk/by-label/USB:ext4:/Linux_Root.key"' /etc/grub.d/10_linux
# sudo cat /etc/grub.d/10_linux | grep GRUB_CMDLINE_LINUX=




# sudo nano /etc/default/grub

# Debian Graphic Installer
# sudo cat /etc/default/grub | grep GRUB_CMDLINE_LINUX_DEFAULT
# sudo sed -i '/GRUB_CMDLINE_LINUX_DEFAULT=/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet"' /etc/default/grub
# sudo cat /etc/default/grub | grep GRUB_CMDLINE_LINUX_DEFAULT

# sudo sed -i '/GRUB_CMDLINE_LINUX=/c\GRUB_CMDLINE_LINUX=""' /etc/default/grub




# Grub Password Prompt After EFI Before Kernel Image

# # Arch
# sudo cat /etc/default/grub | grep GRUB_ENABLE_CRYPTODISK=
# sudo sed -i '/GRUB_ENABLE_CRYPTODISK=/c\GRUB_ENABLE_CRYPTODISK=y' /etc/default/grub
# sudo cat /etc/default/grub | grep GRUB_ENABLE_CRYPTODISK=

# Duplicate Line GRUB_CMDLINE_LINUX_DEFAULT Comment
# GRUB_CMDLINE_LINUX_DEFAULT Remove cryptdevice

# # Debian
# sudo cat /etc/default/grub | grep GRUB_ENABLE_CRYPTODISK=
# sudo tee --append /etc/default/grub << EOF
# GRUB_ENABLE_CRYPTODISK=n
# EOF
# sudo cat /etc/default/grub | grep GRUB_ENABLE_CRYPTODISK=




# BuiltIn
# pacman -S grub-efi-x86_64
# MBR Mode
# grub-install /dev/sd[letter]
# EFI Mode
# grub-install --target=x86_64-efi --bootloader-id=manjaro_grub --efi-directory=/boot/efi --boot-directory=/boot --recheck --debug
# sudo grub-install
# No Need
# sudo grub-mkconfig -o /boot/grub/grub.cfg
# sudo update-grub




sudo update-grub

# Same
# sudo grub-mkconfig -o /boot/grub/grub.cfg

# sudo reboot




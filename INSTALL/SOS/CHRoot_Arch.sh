#Mount Root Partition
# sudo mount /dev/sd[letter][number] /run/media/$USER/ROOT/

sudo mount --bind /dev/ /run/media/$USER/ROOT/dev/
sudo mount --bind /proc/ /run/media/$USER/ROOT/proc/
sudo mount --bind /sys/ /run/media/$USER/ROOT/sys/




lsblk -f

# Grub EFI + UnEncrypted BOOT + LUKS ROOT
# Mount BOOT
sudo mount /dev/sd_# /run/media/$USER/ROOT/boot/
# Mount EFI
sudo mount /dev/sd_# /run/media/$USER/ROOT/boot/efi/


# FIX: Internet Connection
# sudo cp /etc/resolv.conf /run/media/$USER/ROOT/etc/
sudo chroot /run/media/$USER/ROOT/




# su $USER
# pacman -Sy
# Command Here




exit





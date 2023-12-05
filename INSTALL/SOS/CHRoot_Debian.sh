#https://wiki.debian.org/RescueLive


lsblk -f
#Mount LUKS Root Via File Manager
#Mount Mint Boot Partition (Not EFI Partition)
sudo mount /dev/sd_# /media/$USER/LINUX/boot/
lsblk -f


# for name in proc sys dev; do sudo mount --bind /$name /media/$USER/LINUX/$name; done
for name in proc sys dev; do sudo mount --bind /$name $PWD/$name; done

# sudo mount --bind /etc/resolv.conf /media/$USER/LINUX/etc/resolv.conf


# sudo chroot /media/$USER/LINUX/ /bin/bash
sudo chroot $PWD /bin/bash




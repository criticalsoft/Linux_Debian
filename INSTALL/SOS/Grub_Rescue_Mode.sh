############Cannot Boot (grub rescue) After Partition Change (When Install From Windows VirtualBox / dd Clone)############
#Normal
ls
ls (hd#,gpt#)/
......
set boot=(hd#,gpt#)
set prefix=(hd#,gpt#)/boot/grub/
insmod normal
normal

#LUKS Use (crypto#) Instead Of (hd#,gpt#)




#Before sudo Setup
#Not Work ??
#su -
#grub-install
#update-grub

#sudo grub-install /dev/sd_
sudo grub-install
sudo update-grub





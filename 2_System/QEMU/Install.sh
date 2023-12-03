sudo apt install -y qemu-system
sudo apt install -y virt-manager

# Use:
# kvm -cdrom ./live-image-*.hybrid.iso
# kvm -hda ./live-image-*.img




notify-send --icon=virtualbox --expire-time=0 --app-name="VirtualBox" "
FIX: Could not access KVM kernel module
Enable Virtualization Technology In BIOS Option
"




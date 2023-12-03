# sudo apt install -y git
# sudo apt install -y wget
#
# # git clone https://salsa.debian.org/live-team/live-build.git $BUILD/live-build/
# git clone https://salsa.debian.org/live-team/live-build.git $BUILD/live-build/ --single-branch --no-tags
# cd $BUILD/live-build/
# git checkout d70a84f2e9f6808ca24a52cee1ec62898de98db0
# cd -
#
# # FIX: umount target is busy
# # ./live-build/scripts/build/* umount -l chroot/* (chroot_sysfs chroot_devpts)
#
# # cd ./live-build/
# # # make
# # sudo make install
#
# # Keep ./config/includes.chroot_after_packages/*
# # Comment if [ -d config ]; then fi
# cp $BUILD/live-build/test/rebuild.sh $BUILD




# Could not connect to archive.ubuntu.com:443
# Build Time Security (HTTPS Prevent Man In The Middle Attack)
sudo tee /etc/apt/sources.list << EOF
deb https://archive.ubuntu.com/ubuntu/ jammy main restricted

deb https://archive.ubuntu.com/ubuntu/ jammy-updates main restricted

deb https://archive.ubuntu.com/ubuntu/ jammy universe
deb https://archive.ubuntu.com/ubuntu/ jammy-updates universe

deb https://archive.ubuntu.com/ubuntu/ jammy multiverse
deb https://archive.ubuntu.com/ubuntu/ jammy-updates multiverse

deb https://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse

deb https://security.ubuntu.com/ubuntu/ jammy-security main restricted
deb https://security.ubuntu.com/ubuntu/ jammy-security universe
deb https://security.ubuntu.com/ubuntu/ jammy-security multiverse
EOF




# FIX APT: Certificate verification failed: The certificate is NOT trusted
# sudo apt install -y ntp

# FIX: Failed to fetch https
sudo apt install -y apt-transport-https

sudo apt update

# FIX: Home Folder Content Not Changed
sudo apt full-upgrade -y

sudo apt install -y live-build




# FIX: Live Home Folder Space Limit (Not Working)
# sudo rm -r /media/$USER/TEMP/Critical_OS
# BUILD=/media/$USER/TEMP/Critical_OS

# sudo rm -r ~/Critical_OS
BUILD=~/Critical_OS

# FIX: cannot create ./chroot/test-dev-null Permission denied
# lsblk |grep TEMP
# sudo mount -o remount /dev/sd_# /media/$USER/TEMP/
# sudo systemctl daemon-reload

# FIX: cannot create ./chroot/test-dev-null Permission denied
# mkdir -p /media/$USER/TEMP/
# sudo mount -o rw /dev/sd_# /media/$USER/TEMP/
# sudo systemctl daemon-reload




# https://live-team.pages.debian.net/live-manual/html/live-manual/customizing-contents.en.html

# After: update-initramfs: Generating /boot/initrd.img
mkdir -p $BUILD/config/hooks/normal/

# tee $BUILD/config/hooks/normal/9999-CUSTOM.hook.binary << EOF
tee $BUILD/config/hooks/normal/9999-CUSTOM.hook.chroot << EOF
echo ----------------
whoami
echo \$PWD
export USER='live'
echo \$USER


# FIX: PlasmaDesktop Crash (Permission Reset)
# FIX: Home Folder Content Not Changed
# export HOME=/home/\$USER
# echo ~
sudo useradd -m \$USER
sudo usermod -a -G root \$USER
sudo passwd \$USER
# PassWordLess: Enter X 6


# FIX: a terminal is required to read the password  ('' Not Work)
# echo "Defaults timestamp_timeout=-1" | sudo tee --append /etc/sudoers
echo "\$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee --append /etc/sudoers

# Fast Boot Test: Comment Section Of ALL.sh
su -c 'cd /Linux_Debian/; ./ALL.sh; cd /;' - \$USER

# Remove PassWord Access ("" Not Work)
sudo sed -i '\$d' /etc/sudoers

# FIX: Memory Error
rm -r /Linux_Debian/
echo ----------------
EOF

# Persistence
# https://live-team.pages.debian.net/live-manual/html/live-manual/customizing-run-time-behaviours.en.html




# Can Not cd to /Linux_Debian/
# ln -sf ~/Linux_Debian/ ./config/includes.chroot_after_packages/

# mkdir -p $BUILD/config/includes.chroot_after_packages/
# cp -r ../Linux_Debian/ $BUILD/config/includes.chroot_after_packages/
mkdir -p $BUILD/config/includes.chroot/
cp -r ../Linux_Debian/ $BUILD/config/includes.chroot/




# # https://live-team.pages.debian.net/live-manual/html/live-manual/customizing-contents.en.html#boot-time-hooks

# # Need sudo Not Work With No PassWord
# # FIX: Live Build chroot: Could not get geometry of device
# # FIX: System Crash (FireFox DeOldify CodeFormer D3PhotoInpainting)
# # Normal Install Swap Is /dev/sd_#
# mkdir -p $BUILD/config/includes.chroot/lib/live/config/
# sudo tee --append $BUILD/config/includes.chroot/lib/live/config/swapfile << EOF
# if [ ! -f "/swapfile" ]; then
#     sudo swapon --show
#
#     # sudo dd if=/dev/zero of=/swapfile bs=1M count=65536
#     # sudo dd if=/dev/zero of=/swapfile bs=1M count=16384
#     # sudo fallocate -l 64G /swapfile
#     sudo fallocate -l 16G /swapfile
#     sudo chmod 600 /swapfile
#     ls -lh /swapfile
#
#     sudo mkswap /swapfile
#
#     sudo swapon /swapfile
#     sudo swapon --show
#
#     echo '/swapfile none swap sw 0 0' | sudo tee --append /etc/fstab
#     cat /etc/fstab
#
#     # FIX Live Build: mount hint your fstab has been modified, but systemd still uses the old version
#     # sudo systemctl daemon-reload
#
#     # sudo reboot
# fi
# EOF
# sudo chmod +x $BUILD/config/includes.chroot/lib/live/config/swapfile




# Manual
cd $BUILD

# https://wiki.ubuntu.com/Live-Build
# https://wiki.ubuntu.com/TomGall/LiveBuild
# https://manpages.ubuntu.com/manpages/trusty/man1/lb_config.1.html

# quote FIX: Package firmware-linux has no installation candidate
# Too Short Version: No Home Environment Variable
# --distribution "$(lsb_release -cs)" FIX: cannot copy a directory, binary/dists/testing, into itself
# --debian-installer-distribution "$(lsb_release -cs)" FIX: debian-installer-build-deps : Depends: linux-image-* but it is not installable

# --security false --updates false FIX: /etc/apt/source.list HTTP 80 Risk
# --archive-areas "main contrib non-free non-free-firmware" FIX: Package firmware-linux is not available, but is referred to by another package
# --cache-packages true: Reduce Build Time
# --source false: Reduce Build Time

# --binary-image hdd FIX: CanNot Resize Root Partition
# --binary-filesystem ext4 FIX: Could not get geometry of device
# --chroot-filesystem none FIX: CanNot Resize Root Partition (If you use 'none' or 'plain', then no filesystem image is created and the root filesystem content is copied on the binary image filesystem as flat files.)
# --hdd-size 26624 FIX: Could not get geometry of device (binary.img Size = live-image-*.img Size) (Must > ALL Size)

# Build Time Security (HTTPS Prevent Man In The Middle Attack)
lb config \
--mode ubuntu \
--mirror-bootstrap "https://ports.ubuntu.com/ubuntu-ports/" \
--mirror-binary "https://ports.ubuntu.com/ubuntu-ports/" \
--mirror-chroot "https://ports.ubuntu.com/ubuntu-ports/" \
--distribution "$(lsb_release -cs)" \
--archive-areas "main universe multiverse restricted" \
--security true \
--debian-installer live \
--debian-installer-distribution "$(lsb_release -cs)" \
--bootappend-live "boot=live components username=live hostname=cd locales=en_US.UTF-8 keyboard-layouts=us" \
--binary-images hdd \
--binary-filesystem ntfs \
--chroot-filesystem none \
--checksums md5 \
--iso-volume "Critical_OS"
# --bootstrap debootstrap \
# --bootstrap-flavour "$bootstrap_flavour" \
# --initramfs "live-boot" \
# --keyring-packages "debian-archive-keyring" \
# --linux-packages linux \

# Build Time Security (HTTPS Prevent Man In The Middle Attack)
sudo sed -i "s|http://|https://|g" $BUILD/config/bootstrap

# https://live-team.pages.debian.net/live-manual/html/live-manual/the-basics.en.html#224

# Check: CanNot Boot With HDD Image
# sudo losetup -f -P ./live-image-*.img
# unsquashfs ./filesystem.squashfs
# sudo fdisk -l ./live-image-*.img

# sudo lb clean --purge
# sudo rm -rf ./config/
# sudo rm -rf ./.build/

sudo lb build
sha256sum $BUILD/live-image-*.img > $BUILD/live-image-amd64.txt
sudo chown $USER:$USER $BUILD/live-image-*.img

# FIX: Could not access KVM kernel module: Enable Virtualization Technology In BIOS Option
# kvm -cdrom ./live-image-*.hybrid.iso
kvm -hda $BUILD/live-image-*.img

# FIX: Home Folder Space Limit
# sudo dd
# sudo gparted




# # Git
# cd $BUILD
#
# # https://wiki.debian.org/ReproducibleInstalls/LiveImages
#
# # FIX: umount target is busy
# # ./rebuild.sh --configuration kde --debian-version testing
# ./rebuild.sh --configuration kde --debian-version trixie --debian-version-number testing --timestamp archive --installer-origin git




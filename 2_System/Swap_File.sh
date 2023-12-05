# FIX: System Crash (FireFox DeOldify CodeFormer D3PhotoInpainting)




# FIX: Working Only Once
# sudo swapoff /swapfile
# sudo rm /swapfile
# sudo nano /etc/fstab
# sudo rm /etc/init.d/swapfile

# No sudo Work With No PassWord
# sudo tee --append /etc/init.d/swapfile << EOF
sudo tee --append /etc/environment << EOF
# FIX Live Build (chroot): Could not get geometry of device
if [ "\$(stat -c %d:%i /)" != "\$(stat -c %d:%i /proc/1/root/.)" ]; then
    echo "Skip Chroot"
else
    if [ ! -f "/swapfile" ]; then
        swapon --show

        # dd if=/dev/zero of=/swapfile bs=1M count=65536
        # dd if=/dev/zero of=/swapfile bs=1M count=16384
        # fallocate -l 64G /swapfile
        fallocate -l 16G /swapfile
        chmod 600 /swapfile
        ls -lh /swapfile

        mkswap /swapfile

        swapon /swapfile
        swapon --show

        echo '/swapfile none swap sw 0 0' | tee --append /etc/fstab
        cat /etc/fstab

        # FIX Live Build: mount hint your fstab has been modified, but systemd still uses the old version
        # systemctl daemon-reload

        # reboot
    fi
fi
EOF
# sudo chmod +x /etc/init.d/swapfile




# FIX: Not Working
# sudo update-rc.d swapfile defaults

# /etc/cron.d/
# crontab -r
# crontab -l > file; echo "@reboot /etc/init.d/swapfile" >> file; crontab file; rm file




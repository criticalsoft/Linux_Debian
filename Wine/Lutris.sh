echo "deb https://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key -O- | sudo tee /etc/apt/trusted.gpg.d/lutris.asc
sudo apt update
sudo apt install lutris




# cd /media/$USER/MEDIA/YT_Soft/FreePlay/_frozen_privacy/BattleNet/
# lutris --install ./blizzard-battlenet-standard




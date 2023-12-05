# AntiVirus
sudo rm ./VirtualBox-*.run
sudo wget -c https://download.virtualbox.org/virtualbox/7.0.12/VirtualBox-7.0.12-159484-Linux_amd64.run




# FIX: Live Build ChRoot Permission
# sudo chown $USER:$USER ./VirtualBox-*.run
# sudo chmod 777 ./VirtualBox-*.run




# sudo rm ./SHA256SUMS.txt
# sudo wget -c https://www.virtualbox.org/download/hashes/7.0.12/SHA256SUMS -O ./SHA256SUMS.txt
# 
# # FIX: Live Build ChRoot Permission
# sudo chown $USER:$USER ./SHA256SUMS.txt
# sudo chmod 777 ./SHA256SUMS.txt
# 
# sha256sum --binary ./VirtualBox-*.run
# sha256sum --ignore-missing --check ./SHA256SUMS.txt




sudo rm ./Oracle_VM_VirtualBox_Extension_Pack-*.vbox-extpack
sudo wget -c https://download.virtualbox.org/virtualbox/7.0.12/Oracle_VM_VirtualBox_Extension_Pack-7.0.12.vbox-extpack

# FIX: Live Build ChRoot Permission
sudo chown $USER:$USER ./Oracle_VM_VirtualBox_Extension_Pack-*.vbox-extpack
sudo chmod 777 ./Oracle_VM_VirtualBox_Extension_Pack-*.vbox-extpack




# Test: Live Build ChRoot Permission
# ls -la




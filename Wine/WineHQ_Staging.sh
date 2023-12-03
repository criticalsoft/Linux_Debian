#https://wiki.winehq.org/Debian
sudo tee /etc/apt/sources.list.d/winehq.list << EOF
deb https://dl.winehq.org/wine-builds/debian/ $(lsb_release -cs) main
EOF




wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
rm ./winehq.key

#FIX: Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 818A435C5FCBF54A




sudo apt update




########Get Out Of Wine Dependency Hell########
#sudo apt install --install-recommends winehq-stable
#sudo apt install --install-recommends winehq-devel
sudo apt install --install-recommends winehq-staging




sudo apt install -y wine64

#ReCreate Instance
sudo rm -rf ~/.wine/
mkdir -p ~/.wine/drive_c/




#Gecko & MoNo (msi)
cp -r ./wine/ ~/.cache/

#FIX: Photoshop Set-up.exe Crash, Must Install Same RunTime Version
#FIX: CanNot Launch photoshop.exe, Must Install RunTime
wine64 ./RunTime/VC_redist.x86.exe
wine64 ./RunTime/VC_redist.x64.exe




#RunTime Install Tool
sudo apt install -y winetricks
#cp -r ./Cache/winetricks/ ~/.cache/


cp -r ./winetricks/ ~/.cache/

#winetricks regedit




winetricks win10
notify-send --icon=applications-multimedia --expire-time=0 --app-name="Wine" "
FIX: CRClient.dll failed to initialize
Libraries -> Add: msvcp140
"
winecfg




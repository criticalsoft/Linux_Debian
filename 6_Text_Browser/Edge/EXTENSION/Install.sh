# https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/developer-guide/alternate-distribution-options#using-a-preferences-json-file-macos-and-linux




mkdir -p ~/.config/microsoft-edge/External\ Extensions/
cp ./*.json ~/.config/microsoft-edge/External\ Extensions/




# Install Extension
microsoft-edge &

# Remove App ShortCut
sudo rm /usr/share/applications/microsoft-edge.desktop




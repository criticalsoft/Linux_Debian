# sudo apt install -y blender




# FOR: Animation Node AddOn
rm -rf ~/Blender/
tar xJf ./blender-*.tar.xz --directory ~/
mv ~/blender-*/ ~/Blender/

mkdir -p ~/.local/bin/
ln -sf ~/Blender/blender ~/.local/bin/




cp ~/Blender/blender.svg ~/.local/share/icons/
# cp ~/Blender/blender.desktop ~/.local/share/applications/

tee ~/.local/share/applications/blender.desktop << EOF
[Desktop Entry]
Name=Blender
GenericName=3D modeler
Keywords=3d;cg;modeling;animation;painting;sculpting;texturing;video editing;video tracking;rendering;render engine;cycles;game engine;python;
# Exec=blender %f
Exec=~/.local/bin/blender %f
Icon=blender
Terminal=false
Type=Application
PrefersNonDefaultGPU=true
X-KDE-RunOnDiscreteGpu=true
Categories=Graphics;3DGraphics;
MimeType=application/x-blender;
StartupWMClass=Blender
StartupNotify=false
EOF




# For Addon: Import Gimp Image to Scene
# sudo apt install -y xcftools




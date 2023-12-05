# May Cause All GTK App Icon Not Show Up In Plasma Problem (eg Kvantum QTCurve)
# ln -sf ~/Icon/ ~/.local/share/icons

mkdir -p ~/.local/share/icons/
for i in ./*.tar.gz; do tar -xzf $i -C ~/.local/share/icons/; done

# Not Work
# FIX: Panel Icon Missing (KDE Plasma + Kvantum)
# tee --append ~/.profile << EOF
# export XDG_DATA_DIRS=~/.local/share/:$XDG_DATA_DIRS
# export XDG_CURRENT_DESKTOP=kde
# EOF

kcmshell5 kcm_icons




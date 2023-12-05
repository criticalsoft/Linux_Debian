# May Cause All GTK App Icon Not Show Up In Plasma Problem (eg Kvantum QTCurve)
# ln -sf ~/Icon/ ~/.icons

mkdir -p ~/.icons/
for i in ./*.tgz; do tar -xzf $i -C ~/.icons/; done

kcmshell5 kcm_cursortheme





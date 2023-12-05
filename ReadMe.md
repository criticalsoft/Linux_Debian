<a href="https://www.youtube.com/watch?v=4bSq34fl7qs&list=PLUM-aSm--rfkSpViz1cHZ6GI5CS-2JPuH&ab_channel=CriticalSoft" target="_blank">
<img src="https://github.com/criticalsoft/Critical_OS/blob/main/Preview.jpg" alt="Critical_OS"/>
</a>


<a href="https://colab.research.google.com/drive/1jqpvTFHhwhl4k96LozFKsYkbxLMrXEcw" target="_blank">
Colab_Build
</a>


~~~
# Run After Normal Install (Append Mode)
./ALL.sh

# [OR]

# Build Live Image
./Live_Build_Debian.sh

# Create Installation Media
lsblk -f
sudo dd if=./live-image-*.img of=/dev/sd_ status=progress
sudo gparted /dev/sd_
~~~


~~~
Left Hand Keyboard:
Grave <=> BackSpace
Caps_Lock <=> Return

Switch To Activity:
Meta + F1 / F2 / F3 / F4
Mouse Left + Panel Icon

Toggle Overview:
Meta + Tab
Meta + Shift + Tab (Desktop Grid)
Mouse Left + Panel Icon

Toggle Present Window:
Meta + Grave
Meta + Shift + Grave (All Desktop)
Mouse Left + Panel Icon

Switch Desktop:
Meta + Q / E / Z / C
Meta + A / D / W / X
Mouse Left + Screen Edge

Move Window To Desktop:
Meta + Shift + Q / E / Z / C
Meta + Shift + A / D / W / X
Meta Key + Mouse Left + Screen Edge

ClipBoard:
Ctrl + Shift + V

Show Desktop:
Meta + Space

Window Operation Menu:
TitleBar + Right Click
~~~


~~~
AutoRaise Mouse:
Window activation policy: Focus follows mouse
Mouse Scrolling: Invert scroll direction

Run Application:
Meta + Caps_Lock
Meta + Shift + Caps_Lock (Application Launcher)
Mouse Left + Panel Icon

Switch Task:
Meta + 1 / 2 / 3 / 4

Close Window:
Meta + Esc
Ctrl + Shift + Esc (Force)

Move Window:
Meta Key + Mouse Left

Resize Window:
Meta Key + Mouse Right

Shade Window:
Meta + R
TitleBar + Mouse Wheel

Maximize:
Meta + F
TitleBar + Double Click

Minimize:
Meta + V
TitleBar + Middle Click

Keep Window on Top:
Meta + T

Keep Window on All Desktop:
Meta + G

Keep Window on Bottom:
Meta + B
~~~




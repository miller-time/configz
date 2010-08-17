# fire up X

xrdb -merge ~/.Xresources
xset b off
xsetbg -center -xzoom 100 -yzoom 100 /home/millertime/Pictures/diablo3.jpg
gnome-screensaver

# Start battery and clock addons - Thanks Clark!
/home/millertime/sh/batt.sh &
/home/millertime/sh/clock.sh &

# Start DWM
#exec ssh-agent /home/millertime/.dwm/bin/dwm

# Start Xmonad
exec /home/millertime/.xmonad/xmonad-i386-linux

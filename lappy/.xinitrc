#fire up X

xrdb -merge ~/.Xresources
xset b off
xsetbg -xzoom 120 -yzoom 120 /home/millertime/Pictures/sunshine.jpg

/home/millertime/batt.sh &
/home/millertime/clock.sh &
exec ssh-agent /home/millertime/.dwm/bin/dwm

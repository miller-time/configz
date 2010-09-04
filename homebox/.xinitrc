# .xinitrc - thanks to Clarkb

xrdb -merge ~/.Xresources
xset b off
xsetbg -center -xzoom 100 -yzoom 100 /home/russell/Pictures/ice-mountains.jpg

# battery and clock addons
#/home/millertime/sh/batt.sh &
#/home/millertime/sh/clock.sh &


# for launching fluxbox
#exec startfluxbox


# for launching xmonad
xmobar /home/russell/.xmobarrc &
xsetroot -cursor_name left_ptr
xmonad

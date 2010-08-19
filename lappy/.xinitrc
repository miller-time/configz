# .xinitrc - thanks to Clarkb

xrdb -merge ~/.Xresources
xset b off
#xsetbg -center -xzoom 100 -yzoom 100 /home/millertime/pictures/diablo3.jpg

# battery and clock addons
#/home/millertime/sh/batt.sh &
#/home/millertime/sh/clock.sh &


# for launching fluxbox
#exec startfluxbox


# for launching xmonad
xmobar /home/millertime/.xmobarrc &
xsetroot -cursor_name left_ptr
xmonad

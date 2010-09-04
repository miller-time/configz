# .xinitrc
xrdb -merge ~/.Xresources
xset b off

# for launching xmonad
xmobar /home/millertime/.xmobarrc &
xsetroot -cursor_name left_ptr
xmonad

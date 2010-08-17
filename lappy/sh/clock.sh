# all thanks go to clarkb
# had to do some tweaking for screensize

while :; do
    date
    cal
    sleep 1
done | dzen2 -e 'entertitle=grabmouse;leavetitle=ungrabmouse;button1=togglecollapse' -l 8 -ta r -sa c -tw 250 -w 250 -x 700 -u

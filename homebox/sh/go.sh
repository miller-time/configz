stop network-manager
pkill wpa_supplicant
pkill dhclient
wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant.conf
dhclient wlan0
/etc/init.d/apache2 restart
mount.ntfs-fuse /dev/sda2 /media/windows
banner hello

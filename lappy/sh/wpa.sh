# thanks go out to Hunner for helping me set up wpa_supp

stop network-manager
pkill wpa_supplicant
pkill dhclient
wpa_supplicant -B -ieth1 -c/etc/wpa_supplicant.conf
dhclient eth1

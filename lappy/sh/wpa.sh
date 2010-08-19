# thanks go out to Hunner for helping me set up wpa_supp

pkill wpa_supplicant
pkill dhcpcd
wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant.conf
dhcpcd wlan0

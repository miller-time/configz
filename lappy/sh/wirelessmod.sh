# run this any time kernel updates and wireless is disabled
modprobe lib80211
modprobe ieee80211_crypt_tkip
insmod wl.ko
cp wl.ko /lib/modules/`uname -r`/kernel/drivers/net/wireless
depmod -a

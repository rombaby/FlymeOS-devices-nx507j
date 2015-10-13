#! /bin/sh

if [ ! -d "/data/wifi" ]; then
    mkdir /data/wifi
    chmod 0775 /data/wifi
    chown system:system /data/wifi
else
    rm /data/wifi/*
fi

# wifi

if [ -e "/system/etc/wifi/wifi_info" ]; then
	ln -s /system/etc/wifi/wifi_info /data/wifi/ic_ver
fi

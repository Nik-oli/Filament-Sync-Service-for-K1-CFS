#!/bin/sh

if test -f "/root/Filament-Sync-Service/service/sync.sh"; then
SYNCDIRECTORY="/root/Filament-Sync-Service/data"
else
SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service/data" 
fi

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

while :
do
    echo "Syncing"
    cp -a ${SYNCDIRECTORY}/* ${CREALITYDIRECTORY}
    sleep 15
done
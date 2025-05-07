#!/bin/sh

if test -f "/root/Filament-Sync-Service-for-K1-CFS/service/sync.sh"; then
    SYNCDIRECTORY="/root/Filament-Sync-Service-for-K1-CFS/data"
else
    SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service-for-K1-CFS/data" 
fi

CREALITYDIRECTORY="/usr/data/creality/userdata/box"

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done

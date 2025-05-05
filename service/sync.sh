#!/bin/sh

if test -f "/root/Filament-Sync-Service/service/sync.sh"; then
    SYNCDIRECTORY="/root/Filament-Sync-Service/data"
else
    SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service/data" 
fi

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        rsync -a ${SYNCDIRECTORY}/ ${CREALITYDIRECTORY}
    fi
    sleep 15
done
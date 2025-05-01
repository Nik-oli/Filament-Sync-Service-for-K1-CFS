#!/bin/sh

if test -f "/root/Filament-Sync-Service/service/sync.sh"; then
SYNCDIRECTORY="/root/Filament-Sync-Service/data"
else
SYNCDIRECTORY="/mnt/UDISK/root/Filament-Sync-Service/data" 
fi

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

while :
do
    syncedfilesize=$(stat -c%s "$SYNCDIRECTORY/material_database.json")
    targetfilesize=$(stat -c%s "$CREALITYDIRECTORY/material_database.json")
    if([ $syncedfilesize != $targetfilesize ]);then
        cp -a ${SYNCDIRECTORY}/* ${CREALITYDIRECTORY}
    fi
    sleep 15
done
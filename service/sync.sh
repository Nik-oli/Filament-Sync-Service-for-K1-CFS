#!/bin/sh

if test -f "${HOME}/Filament-Sync-Service/service/sync.sh"; then
    SYNCDIRECTORY="${HOME}/Filament-Sync-Service/data"
else
    SYNCDIRECTORY="${HOME}/Filament-Sync-Service/data" 
fi

CREALITYDIRECTORY="/mnt/UDISK/creality/userdata/box"

while :
do
    if test -f "$SYNCDIRECTORY/material_database.json"; then
        syncedfilesize=$(stat -c%s "$SYNCDIRECTORY/material_database.json")
        targetfilesize=$(stat -c%s "$CREALITYDIRECTORY/material_database.json")
        if([ $syncedfilesize != $targetfilesize ]);then
            cp -a ${SYNCDIRECTORY}/. ${CREALITYDIRECTORY}
        fi
    fi

    sleep 15
done
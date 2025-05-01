#!/bin/sh
syncdirectory="$HOME/Filament-Sync-Service/data"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

while :
do
    cp -a $syncdirectory/* $crealitydirectory
    sleep 15
done
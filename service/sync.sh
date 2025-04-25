#!/bin/bash
syncdirectory="$HOME/Filament-Sync-Service/data"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

cp -a $syncdirectory/* $crealitydirectory

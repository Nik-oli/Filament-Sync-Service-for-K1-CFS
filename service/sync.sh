#!/bin/bash
syncdirectory="/root/Filament-Sync-Service/data"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

cp -a $syncdirectory/* $crealitydirectory

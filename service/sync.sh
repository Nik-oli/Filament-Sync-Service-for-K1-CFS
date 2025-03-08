#!/bin/bash
syncdirectory="${PWD}/Filament-Sync-Service/data"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

cp -a $syncdirectory/* $crealitydirectory

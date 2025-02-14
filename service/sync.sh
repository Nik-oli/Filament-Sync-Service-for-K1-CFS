#!/bin/bash
syncdirectory="/root/filament-sync-service/data"
crealitydirectory="/mnt/UDISK/creality/userdata/box/Test"

cp -a $syncdirectory/* $crealitydirectory

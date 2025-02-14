#! /bin/sh
servicedirectory="./service"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

# Installs filament-sync-watcher service to the system

# Create data folder if it doesn't exist
echo "Creating data directory"
mkdir -p data
cp -a $crealitydirectory/material_option.json ./data
cp -a $crealitydirectory/material_database.json ./data



# Add new rc.local
echo "Enabling sync when printer boots"
cp ${servicedirectory}/rc.local /etc/
chmod +x /etc/rc.local

echo "Ready to sync"
echo "Make sure tool is set in your slicers post-processing options"
echo "or in terminal run node main.js in the filament-sync directory"
echo "Check the github repo if you need help"
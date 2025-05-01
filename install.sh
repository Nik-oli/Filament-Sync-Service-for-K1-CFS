#! /bin/sh
servicedirectory="./service"
crealitydirectory="/mnt/UDISK/creality/userdata/box"

# Create data folder if it doesn't exist
echo "Creating data directory"
mkdir -p data

#install and enable startup service
cp ${servicedirectory}/filamentsync /etc/init.d/
chmod +x /etc/init.d/filamentsync
chmod +x ${servicedirectory}/sync.sh
/etc/init.d/filamentsync enable
/etc/init.d/filamentsync start

echo "Ready to sync"
echo "Make sure tool is set in your slicers post-processing options"
echo "or in terminal run node main.js in the filament-sync directory"
echo "Check the github repo if you need help"
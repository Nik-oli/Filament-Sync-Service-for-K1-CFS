

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

## Prerequisites

#### Install Entware from jamincollins k2-improvements script
https://github.com/jamincollins/k2-improvements

    ssh root@your-printer-ip
    Password: creality_2024
    
    sh /mnt/exUDISK/k2-improvements/entware/menu.sh

    Select option 1 to install Entware
    If it says it's already installed - Select option a

    Press Ctrl-C if you get stuck in the Obico "Scanning local network" prompt

#### Close the ssh connection
    exit

#### Reconnect with ssh
    ssh root@your-printer-ip
    Password: creality_2024

#### Install sftp server onto printer
    opkg install openssh-sftp-server

#### Install git onto printer
    opkg install git

## Installation

#### Clone this repo into home folder

    cd /root

    git clone https://github.com/HurricanePrint/Filament-Sync-Service.git

    
#### Install

    cd Filament-Sync-Service/

    sh install.sh

#### All done! Continue to install Filament-Sync on your pc
    https://github.com/HurricanePrint/Filament-Sync
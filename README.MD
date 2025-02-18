

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)

## Prerequisites

#### Install Entware from jamincollins k2-improvements script
https://github.com/jamincollins/k2-improvements

Download the repo and place the folder on a FAT32 formatted USB drive

Plug it into the printer

```
ssh root@your-printer-ip
```
    
```
sh /mnt/exUDISK/k2-improvements/entware/menu.sh
```

    Select option 1 to install Entware
    If it says it's already installed and you haven't installed it - Delete and recopy the folder onto your usb drive


#### Close the ssh connection

```
exit
```

#### Reconnect with ssh

```
ssh root@your-printer-ip
```

#### Install git

```
opkg install git
```

## Installation

#### Clone this repo into home folder

```
cd /root
```

```
git clone https://github.com/HurricanePrint/Filament-Sync-Service.git
```
    
#### Install

```
cd Filament-Sync-Service/
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

## Updating

Delete the old folder

```
rm -rf Filament-Sync-Service/
```
Re-Clone

```
git clone https://github.com/HurricanePrint/Filament-Sync-Service.git
```

Enter folder and run install

```
cd Filament-Sync-Service
```

```
sh install.sh
```

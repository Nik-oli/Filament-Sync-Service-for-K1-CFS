

# Filament Sync Service
This fork is intended for use with the K1 Series printers.  
This is an WIP project and not currently working with K1 series printers due to several missing dependencies.

This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.


## Installation

### If git is not installed on printer

Download the repo files: https://github.com/Nik-oli/Filament-Sync-Service-for-K1-CFS/archive/refs/heads/main.zip  

Extract and place the Filament-Sync-Service folder on a FAT32 formatted USB drive  
(Ensure the folder is renamed from `Filament-Sync-Service-for-K1-CFS-main` to `Filament-Sync-Service-for-K1-CFS`)  

Plug it into the printer

In Terminal

```
ssh root@your-printer-ip
```
```
cp -R /mnt/exUDISK/Filament-Sync-Service-for-K1-CFS $HOME/
```
```
cd Filament-Sync-Service-for-K1-CFS
```

```
sh install.sh
```

### If git is installed

In Terminal

```
git clone https://github.com/Nik-oli/Filament-Sync-Service-for-K1-CFS.git
```

```
cd Filament-Sync-Service-for-K1-CFS
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)


All credit goes to the original author of this script/service.  
This is purely a fock to suit the K1 series printer with CFS upgrade kit.  

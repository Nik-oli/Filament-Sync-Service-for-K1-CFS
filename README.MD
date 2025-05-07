

# Filament Sync Service
This fork is intended for use with the K1 Series printers.  

This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.


## Installation

### If git is not installed on printer

Download the [Latest Release](https://github.com/HurricanePrint/Filament-Sync-Service/releases/latest)

Extract and place the Filament-Sync-Service folder on a FAT32 formatted USB drive

Plug it into the printer

In Terminal

```
ssh root@your-printer-ip
```
```
cp -R /mnt/exUDISK/Filament-Sync-Service $HOME/
```
```
cd Filament-Sync-Service
```

```
sh install.sh
```

### If git is installed

In Terminal

```
git clone https://github.com/HurricanePrint/Filament-Sync-Service.git
```

```
cd Filament-Sync-Service
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)

## Updating

### Without git

Delete the old folder

Connect with ssh

```
rm -rf Filament-Sync-Service/
```

Continue with install instructions

### With git

Connect with ssh

```
cd Filament-Sync-Service
```

```
git fetch --all
```

```
git reset --hard origin/main 
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)


All credit goes to the original author of this script/service.  
This is purely a fock to suit the K1 series printer with CFS upgrade kit.  

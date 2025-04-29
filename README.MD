

# Filament Sync Service
This is the printer service that syncs custom profiles with the printer database. Since Creality replaces the database with defaults on boot, this service will automatically restore your custom database when you power up the printer.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P11AL9ZR)


## Installation

Git is already installed if you are using @jamincollins k2-improvements

### If git is not installed on printer

Download the [Latest Release](https://github.com/HurricanePrint/Filament-Sync-Service/releases/latest)

Extract and place the Filament-Sync-Service folder on a FAT32 formatted USB drive

Plug it into the printer

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

```
rm -rf Filament-Sync-Service/
```

Continue with install instructions

### With git

```
git fetch --all
```

```
git reset --hard origin/main 
```

```
cd Filament-Sync-Service
```

```
sh install.sh
```

#### All done! Continue to install Filament-Sync on your pc
[Filament-Sync](https://github.com/HurricanePrint/Filament-Sync)


#!/bin/bash

#mounting before sending to server shikhar server
sudo mount.cifs //192.168.0.53/DatabaseBackup/RealHRBackup /mnt/NAS/ -o username=realhr.backup,password=HRbackup@1122
#sending backup database file to NAS

sudo rsync -avz --exclude '/Day_backups' $HOME/shikharinsurance-realhrsoft-backend/backups/* /mnt/NAS/

#sending backup media file to NAS
sudo 7z a media.7z  media
cd $HOME/shikharinsurance-realhrsoft-backend/
find $HOME/shikharinsurance-realhrsoft-backend/ -name "media.7z" -type f -mtime +1 -delete

sudo rsync -avz media.7z /mnt/NAS/
#rm -rf media.zip

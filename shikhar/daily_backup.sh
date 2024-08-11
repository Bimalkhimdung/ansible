#!/bin/bash

#sending backup database file to NAS
sudo rsync -avz --exclude '/Day_backups' /home/realhr/shikharinsurance-realhrsoft-backend/backups/* /mnt/NAS/

#sending backup media file to NAS
cd /home/realhr/shikharinsurance-realhrsoft-backend/
sudo 7z a media.7z  media
sudo rsync -avz media.7z /mnt/NAS/
#find /home/realhr/shikharinsurance-realhrsoft-backend/ -name "media.7z" -type f -mtime +1 -delete

#rm -rf media.zip

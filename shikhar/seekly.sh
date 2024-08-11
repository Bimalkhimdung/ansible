#!/bin/bash

#making weekly zip file
cd /home/realhr/shikharinsurance-realhrsoft-backend
7z a  weekly_backup_$(date +\%Y-\%m-\%d).7z   backups
sudo rsync -avz weekly_backup_$(date +\%Y-\%m-\%d).7z /mnt/NAS/
#sudo rm weekly_backup_$(date +\%Y-\%m-\%d).zip


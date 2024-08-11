#!/bin/bash


backup(){
local client_name=$1
source $HOME/${client_name}-realhrsoft-backend/bin/activate
cp $HOME/${client_name}-realhrsoft-backend/day_backup.py $HOME/${client_name}-realhrsoft-backend/app-compile/

cd $HOME/${client_name}-realhrsoft-backend/app-compile
python day_backup.py

#Delete backup file that is older than 7 days
find $HOME/${client_name}-realhrsoft-backend/backups/Day_backups/ -name "*.7z" -type f -mtime +7 -delete

}

backup "shikharinsurance"

#!/bin/bash


backup(){
local client_name=$1
source $HOME/${client_name}-realhrsoft-backend/bin/activate

cd $HOME/${client_name}-realhrsoft-backend/app-compile
python db_backup.py

#Delete backup file that is older than 30 days
find $HOME/${client_name}-realhrsoft-backend/backups/ -name "*.7z" -type f -mtime +30 -delete

}

backup "shikharinsurance"

#!/bin/bash

backup_client() {
  local client="$1"
  local backend_path="$2"
  local frontend_path="$3"
  local backups_path="$4"
  local media_path="$5"

  echo "Backup Started for $client"
  echo "Database Backup started for $client"
  if [ -n "$backups_path" ]; then
    ssh "$client" "sudo chown -R ubuntu:ubuntu $backups_path"
    rsync -avP "$client:$backups_path"/* "/mnt/client_backups/home/ubuntu/Documents/backups/$client/backups"
    ssh "$client" "sudo chown -R root:root $backups_path"
  fi
  echo "Database Backup finished for $client"
  echo "Media file backup for $client"
  if [ -n "$media_path" ]; then
    ssh "$client" "sudo chown -R ubuntu:ubuntu $media_path"
    rsync -avP "$client:$media_path"/* "/mnt/client_backups/home/ubuntu/Documents/backups/$client/media"
    ssh "$client" "sudo chown -R root:root $media_path"
  fi
  echo "Media file backup finished for $client"

  echo "Backend and frontend Env file backup for $client"
  rsync -avP "$client:$backend_path/.env" "/mnt/client_backups/home/ubuntu/Documents/backups/$client/backend_env/"
  rsync -avP "$client:$frontend_path/runtimeConfig.json" "/mnt/client_backups/home/ubuntu/Documents/backups/$client/frontend_env/"

  echo "Backend and frontend Env file backup finished for $client"
}


# DEMO
backup_client "demo.realhrsoft.com" "/etc/opt/demo-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/demo-realhrsoft-frontend" "/etc/opt/demo-realhrsoft-backend/backups" "/etc/opt/demo-realhrsoft-backend/media"
# HRMS
backup_client "hrms.realhrsoft.com" "/home/test/hrms-realhrsoft-backend/irealhrsoft-backend" "/home/test/hrms-realhrsoft-frontend" "/home/test/hrms-realhrsoft-backend/backups" "/home/test/hrms-realhrsoft-backend/media"
# CORE
backup_client "core.realhrsoft.com" "/etc/opt/core-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/core-realhrsoft-frontend" "/etc/opt/core-realhrsoft-backend/backups" "/etc/opt/core-realhrsoft-backend/media"
# MEROJOB
backup_client "merojob.realhrsoft.com" "/etc/opt/merojob-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/merojob-realhrsoft-frontend" "/etc/opt/merojob-realhrsoft-backend/backups" "/etc/opt/merojob-realhrsoft-backend/media"
# EWC
backup_client "ewc.realhrsoft.com" "/etc/opt/ewc-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/ewc-realhrsoft-frontend" "/etc/opt/ewc-realhrsoft-backend/backups" "/etc/opt/ewc-realhrsoft-backend/media" 
# SHTC
backup_client "shtc.realhrsoft.com" "/etc/opt/shtc-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/shtc-realhrsoft-frontend" "/etc/opt/shtc-realhrsoft-backend/backups" "/etc/opt/shtc-realhrsoft-backend/media"
# R2M
backup_client "r2m.realhrsoft.com" "/etc/opt/r2m-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/r2m-realhrsoft-frontend" "/etc/opt/r2m-realhrsoft-backend/backups" "/etc/opt/r2m-realhrsoft-backend/media"
# MEDIQUEST
backup_client "mediquest.realhrsoft.com" "/etc/opt/mediquest-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/mediquest-realhrsoft-frontend" "/etc/opt/mediquest-realhrsoft-backend/backups" "/etc/opt/mediquest-realhrsoft-backend/media"
# MUSICNEPAL
backup_client "musicnepal.realhrsoft.com" "/etc/opt/musicnepal-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/musicnepal-realhrsoft-frontend" "/etc/opt/musicnepal-realhrsoft-backend/backups" "/etc/opt/musicnepal-realhrsoft-backend/media"
# SPARK
backup_client "spark.realhrsoft.com" "/etc/opt/spark-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/spark-realhrsoft-frontend" "/etc/opt/spark-realhrsoft-backend/backups" "/etc/opt/spark-realhrsoft-backend/media"
# AWECODE
backup_client "awecode.realhrsoft.com" "/etc/opt/awecode-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/awecode-realhrsoft-frontend" "/etc/opt/awecode-realhrsoft-backend/backups" "/etc/opt/awecode-realhrsoft-backend/media"
# HEI
backup_client "hei.realhrsoft.com" "/etc/opt/hei-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/hei-realhrsoft-frontend" "/etc/opt/hei-realhrsoft-backend/backups" "/etc/opt/hei-realhrsoft-backend/media"
# WRP
backup_client "wrp.realhrsoft.com" "/etc/opt/wrp-realhrsoft-backend/irealhrsoft-backend" "/etc/opt/wrp-realhrsoft-frontend" "/etc/opt/wrp-realhrsoft-backend/backups" "/etc/opt/wrp-realhrsoft-backend/media"

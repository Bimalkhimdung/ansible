#!/bin/bash
#HRMS.REALHRSOFT.COM
echo "Backup Started for hrms.realhrsoft.com"
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/backups/* /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/backups
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/media/* /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/media
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-backend/irealhrsoft-backend/.env /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/backend_env/
rsync -avP hrms.realhrsoft.com:/home/test/hrms-realhrsoft-frontend/runtimeConfig.json /mnt/client_backups/home/ubuntu/Documents/backups/hrms.realhrsoft.com/frontend_env/
echo "Backup finished for hrms.realhrsoft.com"

# Function to perform backup for a RealHRsoft Clients.
backup_host() {
    local host=$1
    local backend_path=$2
    local backup_dir=$3
    local media_dir=$4
    local backend_env_path=$5
    local frontend_env_path=$6

    echo "Backup Started for $host"

    echo "Database backup for $host"
    ssh "$host" "sudo chown -R ubuntu:ubuntu $backend_path/backups"
    rsync -avP "$host:$backend_path/backups/*" "$backup_dir/backups"
    ssh "$host" "sudo chown -R root:root $backend_path/backups"

    echo "Media backup for $host"
    ssh "$host" "sudo chown -R ubuntu:ubuntu $backend_path/media"
    rsync -avP "$host:$backend_path/media/*" "$backup_dir/media"
    ssh "$host" "sudo chown -R root:root $backend_path/media"

    rsync -avP "$host:$backend_env_path" "$backup_dir/backend_env/"
    rsync -avP "$host:$frontend_env_path" "$backup_dir/frontend_env/"

    echo "Backup finished for $host"
}

#Change this varibale if more clients are added.
declare -A hosts=(
    ["demo.realhrsoft.com"]="/etc/opt/demo-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/demo.realhrsoft.com /etc/opt/demo-realhrsoft-backend/media /etc/opt/demo-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/demo-realhrsoft-frontend/runtimeConfig.json"
    ["core.realhrsoft.com"]="/etc/opt/core-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/core.realhrsoft.com /etc/opt/core-realhrsoft-backend/media /etc/opt/core-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/core-realhrsoft-frontend/runtimeConfig.json"
    ["merojob.realhrsoft.com"]="/etc/opt/merojob-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/merojob.realhrsoft.com /etc/opt/merojob-realhrsoft-backend/media /etc/opt/merojob-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/merojob-realhrsoft-frontend/runtimeConfig.json"
    ["ewc.realhrsoft.com"]="/etc/opt/ewc-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/ewc.realhrsoft.com /etc/opt/ewc-realhrsoft-backend/media /etc/opt/ewc-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/ewc-realhrsoft-frontend/runtimeConfig.json"
    ["shtc.realhrsoft.com"]="/etc/opt/shtc-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/shtc.realhrsoft.com /etc/opt/shtc-realhrsoft-backend/media /etc/opt/shtc-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/shtc-realhrsoft-frontend/runtimeConfig.json"
    ["r2m.realhrsoft.com"]="/etc/opt/r2m-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/r2m.realhrsoft.com /etc/opt/r2m-realhrsoft-backend/media /etc/opt/r2m-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/r2m-realhrsoft-frontend/runtimeConfig.json"
    ["mediquest.realhrsoft.com"]="/etc/opt/mediquest-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/mediquest.realhrsoft.com /etc/opt/mediquest-realhrsoft-backend/media /etc/opt/mediquest-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/mediquest-realhrsoft-frontend/runtimeConfig.json"
    ["musicnepal.realhrsoft.com"]="/etc/opt/musicnepal-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/musicnepal.realhrsoft.com /etc/opt/musicnepal-realhrsoft-backend/media /etc/opt/musicnepal-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/musicnepal-realhrsoft-frontend/runtimeConfig.json"
    ["spark.realhrsoft.com"]="/etc/opt/spark-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/sparkgroup.realhrsoft.com /etc/opt/spark-realhrsoft-backend/media /etc/opt/spark-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/spark-realhrsoft-frontend/runtimeConfig.json"
    ["awecode.realhrsoft.com"]="/etc/opt/awecode-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/awecode.realhrsoft.com /etc/opt/awecode-realhrsoft-backend/media /etc/opt/awecode-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/awecode-realhrsoft-frontend/runtimeConfig.json"
    ["hei.realhrsoft.com"]="/etc/opt/hei-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/hei.realhrsoft.com /etc/opt/hei-realhrsoft-backend/media /etc/opt/hei-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/hei-realhrsoft-frontend/runtimeConfig.json"
    ["wrp.realhrsoft.com"]="/etc/opt/wrp-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/wrp.realhrsoft.com /etc/opt/wrp-realhrsoft-backend/media /etc/opt/wrp-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/wrp-realhrsoft-frontend/runtimeConfig.json"
    ["snp.realhrsoft.com"]="/etc/opt/snp-realhrsoft-backend /mnt/client_backups/home/ubuntu/Documents/backups/snp.realhrsoft.com /etc/opt/snp-realhrsoft-backend/media /etc/opt/snp-realhrsoft-backend/irealhrsoft-backend/.env /etc/opt/snp-realhrsoft-frontend/runtimeConfig.json"

)

# Loop through the hosts array and call the backup function
for host in "${!hosts[@]}"; do
    IFS=' ' read -r backend_path backup_dir media_dir backend_env_path frontend_env_path <<< "${hosts[$host]}"
    backup_host "$host" "$backend_path" "$backup_dir" "$media_dir" "$backend_env_path" "$frontend_env_path"
done

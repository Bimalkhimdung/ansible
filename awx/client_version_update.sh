#!/bin/bash
set -e
# Function to fetch latest tag from Git repository
fetch_latest_tag() {
    local repo_directory=$1
    cd "$repo_directory" || exit 1
    # Fetch tags from the remote repository
    git fetch --tags > /dev/null 2>&1
    # Get the latest tag from last one
    latest_tag=$(git tag -l "*+*" | sort -V | tail -n 1)
    #Get the second last tag from all tag list
    #latest_tag=$(git tag -l "*+*" | sort -V | tail -n 2 | head -n 1)

    echo "$latest_tag"
}
# Function to update version for a specific host
update_version() {
    local client_name=$1
    local host=$2
    local be_tag=$3
    local fe_tag=$4
    local playbook=$5
    echo "Starting $client_name.realhrsoft.com update"
    ansible-playbook "$playbook" -i /home/qaqc/production/inventory --extra-vars "{\"be_tag\":\"$be_tag\",\"fe_tag\":\"$fe_tag\",\"client_name\":\"$client_name\",\"host\":\"$host\"}"
    echo "Finishing $client_name.realhrsoft.com update"
}
# Fetch latest backend tag
be_tag=$(fetch_latest_tag /home/qaqc/aayulogic/irealhrsoft-backend)
echo "Latest be_tag: $be_tag"

# Fetch latest frontend tag

fe_tag=$(fetch_latest_tag /home/qaqc/aayulogic/irealhrsoft-backendd)
echo "Latest fe_tag: $fe_tag"

# Update each host

#demo.realhrsoft.com.np
update_version "demo" "demo" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# hrms.realhrsoft.com
update_version "hrms" "hrms" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# snp.realhrsoft.com
update_version "snp" "snp" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# core.realhrsoft.com
update_version "core" "core" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# merojob.realhrsoft.com
update_version "merojob" "merojob" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# awecode.realhrsoft.com
update_version "awecode" "awecode" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# ewc.realhrsoft.com
update_version "ewc" "ewc" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# shtc.realhrsoft.com
update_version "shtc" "shtc" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# r2m.realhrsoft.com
update_version "r2m" "r2m" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# mediquest.realhrsoft.com
update_version "mediquest" "mediquest" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# musicnepal.realhrsoft.com
update_version "musicnepal" "musicnepal" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# sparkgroup.realhrsoft.com
update_version "sparkgroup" "sparkgroup" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# hei.realhrsoft.com
update_version "hei" "hei" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# testdemo.realhrsoft.com
update_version "demo" "testdemo" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

# wrp.realhrsoft.com
update_version "wrp" "wrp" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"

#pnb.realhrsoft.com
update_version "pnb" "pnb" "$be_tag" "$fe_tag" "/home/qaqc/production/client_version_update.yml"





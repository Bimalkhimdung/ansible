#!/bin/bash
set -e
# Function to fetch latest tag from Git repository
fetch_latest_tag() {
    local repo_directory=$1
    cd "$repo_directory" || exit 1
    # Fetch tags from the remote repository
    git fetch --tags > /dev/null 2>&1
    # Get the latest tag
    latest_tag=$(git tag -l "*+*" | sort -V | tail -n 1)
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
    ansible-playbook "$playbook" -i ~/production/inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"test\",\"client_name\":\"$client_name\",\"host\":\"$host\"}"
    echo "Finishing $client_name.realhrsoft.com update"
}
# Fetch latest backend tag
be_tag=$(fetch_latest_tag ~/aayulogic/irealhrsoft-backend)
echo "Latest be_tag: $be_tag"
# Fetch latest frontend tag
fe_tag=$(fetch_latest_tag ~/aayulogic/irhrs-frontend)
echo "Latest fe_tag: $fe_tag"
# Update each host
update_version "demo" "testdemo" "$be_tag" "$fe_tag" "/home/qaqc/production/new_version_update_datalaya.yml"
update_version "hrms" "hrms" "$be_tag" "$fe_tag" "/home/qaqc/production/new_version_update_datalaya.yml"
update_version "demo" "demo" "$be_tag" "$fe_tag" "/home/qaqc/production/version_update_arm_aws.yml"
update_version "core" "core" "$be_tag" "$fe_tag" "/home/qaqc/production/version_update_arm_aws.yml"
update_version "merojob" "merojob" "$be_tag" "$fe_tag" "/home/qaqc/production/version_update_arm_aws.yml"

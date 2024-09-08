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
    ansible-playbook "$playbook" -i /home/qaqc/production/inventory --extra-vars "{\"be_tag\":\"$be_tag\",\"fe_tag\":\"$fe_tag\",\"client_name\":\"$client_name\",\"host\":\"$host\"}" -vvv
    echo "Finishing $client_name.realhrsoft.com update"
}
# Fetch latest backend tag
be_tag=$(fetch_latest_tag /home/qaqc/aayulogic/irealhrsoft-backend)
echo "Latest be_tag: $be_tag"
# Fetch latest frontend tag
fe_tag=$(fetch_latest_tag /home/qaqc/aayulogic/irhrs-frontend)
echo "Latest fe_tag: $fe_tag"
# Update each host

_client_name=$1
_host=$2

update_version "$_client_name" "$_host" "$be_tag" "$fe_tag" "/home/qaqc/production/each_client_version_update.yml"
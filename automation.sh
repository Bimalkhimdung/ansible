#!/bin/bash

#Fetching latest tag for backend

cd /home/bimal/aayulogic/irealhrsoft-backend

# Fetch tags from the remote repository
git fetch --tags > /dev/null 2>&1
# Get the latest tag -l "*+*" will filter latest that contains +
be_tag=$(git tag -l "*+*" | sort -V | tail -n 1)

echo "Latest be_tag: $be_tag"
#git checkout $be_tag

#Fetch Latest tag for Frontend

cd /home/bimal/aayulogic/irhrs-frontend

# Fetch tags from the remote repository
git fetch --tags > /dev/null 2>&1
# Get the latest tag
fe_tag=$(git tag -l "*+*" | sort -V | tail -n 1)

echo "Latest fe_tag: $fe_tag"
#git checkout $fe_tag

cd /home/bimal/production

echo "stating testdemo updte"
ansible-playbook ./new_version_update_datalaya.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"test\",\"client_name\":\"demo\",\"host\":\"testdemo\"}"
echo "finish testdemo hrms"
#ansible-playbook ./new_version_update_datalaya.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"test\",\"client_name\":\"hrms\",\"host\":\"hrms\"}"
#ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"demo\",\"host\":\"demo\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"core\",\"host\":\"core\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"merojob\",\"host\":\"merojob\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"ewc\",\"host\":\"ewc\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"shtc\",\"host\":\"shtc\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"r2m\",\"host\":\"r2m\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"mediquest\",\"host\":\"mediquest\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"musicnepal\",\"host\":\"musicnepal\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"spark\",\"host\":\"spark\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"awecode\",\"awecode\":\"musicnepal\"}"
# ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"hei\",\"hei\":\"musicnepal\"}"


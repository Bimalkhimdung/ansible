#!/bin/bash

#Fetching latest tag for backend

cd ~/aayulogic/irealhrsoft-backend

# Fetch tags from the remote repository
git fetch --tags > /dev/null 2>&1
# Get the latest tag -l "*+*" will filter latest that contains +
be_tag=$(git tag -l "*+*" | sort -V | tail -n 1)

echo "Latest be_tag: $be_tag"
#git checkout $be_tag

#Fetch Latest tag for Frontend

cd ~/aayulogic/irhrs-frontend

# Fetch tags from the remote repository
git fetch --tags > /dev/null 2>&1
# Get the latest tag
fe_tag=$(git tag -l "*+*" | sort -V | tail -n 1)

echo "Latest fe_tag: $fe_tag"
#git checkout $fe_tag

cd ~/production
#ewc.realhrsoft.com
echo "stating ewc.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"ewc\",\"host\":\"ewc\"}"
echo "Completed ewc.realhrsoft.com update"
#shtc.realhrsoft.com
echo "stating shtc.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"shtc\",\"host\":\"shtc\"}"
echo "Completed shtc.realhrsoft.com update"
#r2m.realhrsoft.com
echo "stating r2m.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"r2m\",\"host\":\"r2m\"}"
echo "Completed r2m.realhrsoft.com update"
#mediquest.realhrsoft.com
echo "stating mediquest.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"mediquest\",\"host\":\"mediquest\"}"
echo "Completed mediquest.realhrsoft.com update"
#musicnepal.realhrsoft.com
echo "stating musicnepal.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"musicnepal\",\"host\":\"musicnepal\"}"
echo "Completed musicnepal.realhrsoft.com update"
#spark.realhrsoft.com
echo "stating spark.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"spark\",\"host\":\"spark\"}"
echo "Completed spark.realhrsoft.com update"
#awecode.realhrsoft.com
echo "stating awecode.realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"awecode\",\"host\":\"awecode\"}"
echo "Completed awecode.realhrsoft.com update"
#hei.realhrsoft.com
echo "stating hei realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"hei\",\"host\":\"hei\"}"
echo "Completed hei realhrsoft.com update"
echo "All Tasked completed"
#wrp.realhrsoft.com
echo "stating wrp realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"wrp\",\"host\":\"wrp\"}"
echo "Completed wrp realhrsoft.com update"
echo "All Tasked completed"
#snp.realhrsoft.com
echo "stating snp realhrsoft.com update"
ansible-playbook ./version_update_arm_aws.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"snp\",\"host\":\"snp\"}"
echo "Completed snp realhrsoft.com update"
echo "All Tasked completed"
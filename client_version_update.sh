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
#hrms.realhrsoft.com
echo -e "stating hrms.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"test\",\"client_name\":\"hrms\",\"host\":\"hrms\"}"
echo -e "Completed hrms.realhrsoft.com update\n"
#core.realhrsoft.com
echo -e "stating core.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"core\",\"host\":\"core\"}"
echo -e "Completed core.realhrsoft.com update\n"
#merojob.realhrsoft.com
echo -e "stating merojob.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"merojob\",\"host\":\"merojob\"}"
echo -e "Completed merojob.realhrsoft.com update\n"
#ewc.realhrsoft.com
echo -e "stating ewc.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"ewc\",\"host\":\"ewc\"}"
echo -e "Completed ewc.realhrsoft.com update\n"
#shtc.realhrsoft.com
echo -e "stating shtc.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"shtc\",\"host\":\"shtc\"}"
echo -e "Completed shtc.realhrsoft.com update\n"
#r2m.realhrsoft.com
echo -e "stating r2m.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"r2m\",\"host\":\"r2m\"}"
echo -e "Completed r2m.realhrsoft.com update\n"
#mediquest.realhrsoft.com
echo -e "stating mediquest.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"mediquest\",\"host\":\"mediquest\"}"
echo -e "Completed mediquest.realhrsoft.com update\n"
#musicnepal.realhrsoft.com
echo -e "stating musicnepal.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"musicnepal\",\"host\":\"musicnepal\"}"
echo -e "Completed musicnepal.realhrsoft.com update\n"
#spark.realhrsoft.com
echo -e "stating spark.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"spark\",\"host\":\"spark\"}"
echo -e "Completed spark.realhrsoft.com update\n"
#awecode.realhrsoft.com
echo -e "stating awecode.realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"awecode\",\"host\":\"awecode\"}"
echo -e "Completed awecode.realhrsoft.com update\n"
#hei.realhrsoft.com
echo -e "stating hei realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"hei\",\"host\":\"hei\"}"
echo -e "Completed hei realhrsoft.com update\n"
echo -e "All Tasked completed"
#wrp.realhrsoft.com
echo -e "stating wrp realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"wrp\",\"host\":\"wrp\"}"
echo -e "Completed wrp realhrsoft.com update\n"
echo -e "All Tasked completed"
#snp.realhrsoft.com
echo -e "stating snp realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"snp\",\"host\":\"snp\"}"
echo -e "Completed snp realhrsoft.com update\n"
#nyayahealthnepal.realhrsoft.com
echo -e "stating nyayahealthnepal realhrsoft.com update\n"
ansible-playbook ./client_version_update.yml -i inventory --extra-vars "{\"be\":\"$be_tag\",\"fe\":\"$fe_tag\",\"user\":\"ubuntu\",\"client_name\":\"nyayahealthnepal\",\"host\":\"nyayahealthnepal\"}"
echo -e "Completed nyayahealthnepal realhrsoft.com update\n"


echo -e "All Tasked completed"

#!/bin/bash
component=$1
environment=$2
dnf install ansible -y
cd /home/ec2-user
if [ ! -d roboshop-ansible-v3/.git ]; then
    git clone https://github.com/daws-92s/roboshop-ansible-v3.git
fi
cd /home/ec2-user/roboshop-ansible-v3
git pull origin main
ansible-playbook -e component=$component -e env=$environment main.yaml
#git clone https://github.com/daws-92s/roboshop-ansible-v3.git
# cd roboshop-ansible-v3
# git sparse-checkout set terraform-roboshop-project/roboshop-infra-dev/roboshop-ansible-v3

# cd terraform-roboshop-project/roboshop-infra-dev/roboshop-ansible-v3
# git pull # when you are running for 2nd time, if there is any change in repo we can pull the changes
# ansible-playbook -e component=$component -e env=$environment main.yaml





#!/bin/bash

component=$1
environment=$2
app_Version=$3

echo "Attempting to install Ansible..."
dnf install ansible -y

echo "Attempting to install Python packages..."
pip3.9 install botocore boto3

echo "Attempting to run ansible-pull..."
ansible-pull -i localhost, -U https://github.com/eswar-sai-kumar/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment -e appVersion=$app_Version

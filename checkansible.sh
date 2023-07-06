#!/bin/bash

#Check, has Ansible installed?
if ! command -v ansible &> /dev/null; then
        echo "Ansible is NOT installed."
#Ask for user-need to install Ansible
        read -p "Install Ansible? (y/n): " install_ansible
        if [[ $install_ansible =~ ^[Yy]$ ]]; then
                echo "Installing Ansible"
                sudo apt-get update
                sudo apt-get install ansible -y
                echo "Ansible was installed/"
        else
                echo "Cancel installing Ansible/"
        fi
else
        echo "Ansible has installed ago."
fi

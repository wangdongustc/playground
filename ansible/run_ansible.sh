#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes

echo "[defaults]" | sudo tee -a /etc/ansible/ansible.cfg
# Use the YAML callback plugin.
echo "stdout_callback = yaml" | sudo tee -a /etc/ansible/ansible.cfg
# Use the stdout_callback when running ad-hoc commands.
echo "bin_ansible_callbacks = True" | sudo tee -a /etc/ansible/ansible.cfg

ansible

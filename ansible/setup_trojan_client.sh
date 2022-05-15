#!/bin/bash

echo "Please enter your sudo password as BECOME password."
ansible-playbook --ask-become-pass playbooks/trojan_client.yml -v $@

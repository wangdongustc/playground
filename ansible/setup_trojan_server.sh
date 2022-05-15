#!/bin/bash

# modify the inventory file in /etc/ansible/hosts
# e.g.
# vultr:
#     hosts:
#         hostname:
#             domain: hostdomain.com
#             password: my_password
#             email: wangdong115@foxmail.com

ansible-playbook -u root playbooks/trojan_server.yml -v $@

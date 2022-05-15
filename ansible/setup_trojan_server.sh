#!/bin/bash

# modify the inventory file in /etc/ansible/hosts
# e.g.
# trojan:  # must be the same with the '-l' option below.
#     hosts:
#         hostname:
#             domain: hostdomain.com
#             password: my_password
#             email: wangdong115@foxmail.com

ansible-playbook -l trojan -u root playbooks/trojan_server.yml -v $@

#!/usr/bin/env bash
apt-get update
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y
ansible-playbook -i inventory provision.yml

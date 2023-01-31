#! /bin/bash

ssh-keygen -f "/home/liet/.ssh/known_hosts" -R "192.168.60.2"
ssh-keygen -f "/home/liet/.ssh/known_hosts" -R "192.168.60.3"
ssh-keygen -f "/home/liet/.ssh/known_hosts" -R "192.168.60.4"

vagrant destroy --force
vagrant up


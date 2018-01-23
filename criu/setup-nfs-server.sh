#!/usr/bin/env bash

sudo apt-get -y -q install nfs-kernel-server

sudo echo "/mnt 10.0.0.3(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
sudo exportfs -a

sudo service nfs-kernel-server start 

sudo mv /tmp/test.c /mnt/test.c
cd /mnt && cc test.c -o test
sudo mkdir /mnt/dump

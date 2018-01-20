#!/usr/bin/env bash

sudo apt-get -y -q install nfs-common

mount -t nfs 10.0.0.2:/mnt /mnt

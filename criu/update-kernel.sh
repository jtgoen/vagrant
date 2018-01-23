#!/usr/bin/env bash

apt-get update #&& apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install virtualbox-guest-dkms

apt-get install -y -q linux-image-4.13.0-26-generic linux-headers-4.13.0-26-generic linux-image-extra-4.13.0-26-generic
#mkdir kerneldl && cd kerneldl

#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.11/linux-headers-4.11.0-041100_4.11.0-041100.201705041534_all.deb
#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.11/linux-headers-4.11.0-041100-generic_4.11.0-041100.201705041534_amd64.deb
#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.11/linux-image-4.11.0-041100-generic_4.11.0-041100.201705041534_amd64.deb

#sudo dpkg -i *.deb
#cd .. && rm -rf kerneldl

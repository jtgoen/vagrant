#!/usr/bin/env bash

#sudo su

apt-get -y -q update
apt-get -y -q install unzip git-all libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf pkg-config python-ipaddr iproute2 libcap-dev libnl-3-dev libnet-dev libaio-dev python-yaml #asciidoc xmlto

git clone -b criu-dev https://github.com/checkpoint-restore/criu.git

cd criu/ && sudo make
./criu/criu check

cd test/ && sudo make -C zdtm/lib/
sudo ./zdtm.py run -a

cd && wget -q 'https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz'
tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz

echo -n                                             >  /etc/profile.d/gopath.sh
echo 'export GOROOT=/usr/local/go'                  >> /etc/profile.d/gopath.sh
echo 'export GOPATH=/home/ubuntu/go'                >> /etc/profile.d/gopath.sh
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin'    >> /etc/profile.d/gopath.sh

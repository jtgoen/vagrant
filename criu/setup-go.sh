#!/usr/bin/env bash

cd && wget -q 'https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz'
tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz

echo -n                                             >  /etc/profile.d/gopath.sh
echo 'export GOROOT=/usr/local/go'                  >> /etc/profile.d/gopath.sh
echo 'export GOPATH=/home/ubuntu/go'                >> /etc/profile.d/gopath.sh
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin'    >> /etc/profile.d/gopath.sh

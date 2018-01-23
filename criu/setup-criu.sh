#!/usr/bin/env bash

go get -u github.com/golang/protobuf/protoc-gen-go

cd go/src/github.com && mkdir checkpoint-restore && cd checkpoint-restore
git clone -b criu-dev https://github.com/checkpoint-restore/criu.git
#git clone https://github.com/checkpoint-restore/criu.git

sudo chown -R ubuntu /home/ubuntu/go

# Build/Check CRIU
cd criu/ && sudo make install
criu check

# Test CRIU
cd test/ && sudo make -C zdtm/lib/
./zdtm.py run -a

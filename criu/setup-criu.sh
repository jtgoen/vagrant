#!/usr/bin/env bash

go get -u github.com/golang/protobuf/protoc-gen-go

cd go/src/github.com && mkdir checkpoint-restore && cd checkpoint-restore
git clone -b criu-dev https://github.com/checkpoint-restore/criu.git
#git clone https://github.com/checkpoint-restore/criu.git
cd criu #&& git revert --no-commit 62629e4 # checkout tags/v3.6

sudo chown -R ubuntu /home/ubuntu/go

# Build/Check CRIU
sudo make install
criu check

# Test CRIU
cd test/ && sudo make -C zdtm/lib/
./zdtm.py run -a

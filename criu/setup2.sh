#!/usr/bin/env bash

sudo su

echo Starting Script 2
go get -u github.com/golang/protobuf/protoc-gen-go

cd go/src/github.com && mkdir checkpoint-restore && cd checkpoint-restore
git clone -b criu-dev https://github.com/checkpoint-restore/criu.git

cd criu/ && make
./criu/criu check

cd test/ && make -C zdtm/lib/
./zdtm.py run -a

#cd criu/lib/go && sudo make && cd 
#cd criu/phaul/ && sudo make && cd


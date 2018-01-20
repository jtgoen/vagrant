#!/usr/bin/env bash

apt-get -y -q update
apt-get -y -q install \
    unzip git-all gcc \
    libprotobuf-dev libprotobuf-c0-dev protobuf-c-compiler protobuf-compiler python-protobuf \
    pkg-config python-ipaddr iproute2 libcap-dev libnl-3-dev libnet-dev libaio-dev python-yaml asciidoc xmlto --no-install-recommends

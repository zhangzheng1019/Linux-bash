#!/usr/bin/env bash
sudo apt-get install zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl
git clone https://github.com/netdata/netdata.git --depth=100 
cd netdata
sudo ./netdata-installer.sh
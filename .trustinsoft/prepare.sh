#!/bin/bash

set -e

cd ..

apt-get update
apt-get install -y gawk gcc-multilib g++ autoconf pkg-config make automake libpcap-dev libtool

git clone \
  --branch libpcap-1.10.1 \
  --single-branch \
  --depth 1 \
  https://github.com/the-tcpdump-group/libpcap.git \
  .trustinsoft/libpcap

autoreconf -i
./configure

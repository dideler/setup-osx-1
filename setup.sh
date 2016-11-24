#!/usr/bin/env bash

set -xe

apt update
apt install git ruby -y

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --trace
popd

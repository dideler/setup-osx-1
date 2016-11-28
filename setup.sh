#!/usr/bin/env bash

set -xe

apt update
apt upgrade -y
apt install -y build-essential git libglib2.0-bin ruby

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --trace
popd

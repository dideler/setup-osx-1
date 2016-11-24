#!/usr/bin/env bash

set -xe

apt update
apt install git -y

mkdir -p ~/github.com
git clone git@github.com:dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --trace
popd

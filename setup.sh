#!/usr/bin/env bash

set -xe

apt update
apt upgrade --yes --quiet
apt install --yes --quiet --install-suggests build-essential git libglib2.0-bin ruby

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --verbose --trace
popd

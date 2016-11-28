#!/usr/bin/env bash

set -xe

apt update
apt upgrade --yes --quiet --with-new-pkgs
apt install --yes --quiet build-essential git libglib2.0-bin ruby
apt autoremove --yes --quiet

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --verbose --trace
popd

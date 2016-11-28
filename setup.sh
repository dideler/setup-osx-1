#!/usr/bin/env bash

set -xe

sudo apt update
sudo apt upgrade --yes --quiet --with-new-pkgs
sudo apt install --yes --quiet build-essential git libglib2.0-bin ruby
sudo apt autoremove --yes --quiet

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --verbose --trace
popd

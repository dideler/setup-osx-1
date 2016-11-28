#!/usr/bin/env bash

set -xe

sudo apt update --quiet
sudo apt upgrade --quiet --yes --with-new-pkgs
sudo apt install --quiet --yes build-essential git libglib2.0-bin ruby
sudo apt autoremove --quiet --yes

mkdir -p ~/github.com
git clone https://github.com/dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --verbose --trace
popd

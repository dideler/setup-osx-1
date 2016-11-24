#!/usr/bin/env bash

set -xe

mkdir -p ~/github.com
git clone git@github.com:dideler/setup-ubuntu.git ~/github.com/dideler/setup-ubuntu

pushd ~/github.com/dideler/setup-ubuntu
  rake --trace
popd

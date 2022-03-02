#!/bin/bash

set -eu

sudo apt update
sudo apt install git build-essential libssl-dev libffi-dev python3-dev python3-pip cargo -y

pushd $HOME

git clone https://github.com/MHProDev/MHDDoS.git
pushd $(pwd)/MHDDoS
pip3 install -r requirements.txt
popd

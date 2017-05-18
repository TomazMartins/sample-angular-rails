#!/usr/bin/env bash

echo "Installing (a)NodeJS"

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

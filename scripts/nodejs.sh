#!/usr/bin/env bash

# Temporary log of initial script
TEMP_INITIAL_FILE="/tmp/initial-script.log"

echo "Installing (a)NodeJS"

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

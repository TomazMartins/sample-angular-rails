#!/usr/bin/env bash

# Temporary log of initial script
TEMP_INITIAL_FILE="/tmp/initial-script.log"

echo "Installing (a)RVM, (b)Ruby and (c)Ruby On Rails"

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
>>$TEMP_INITIAL_FILE 2>&1

\curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=rails >>$TEMP_INITIAL_FILE 2>&1
source ~/.rvm/scripts/rvm

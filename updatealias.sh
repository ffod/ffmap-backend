#!/bin/bash
# Simple script to update the aliases.json file from git

# CONFIGURE THIS TO YOUR GIT DIRECTORY
GIT_REPO=/home/ffmap/ffmap-backend

# CONFIGURE THIS TO THE USER TO RUN THE GIT COMMANDS AS
USER=ffmap

cd $GIT_REPO

su -c "git pull -q" $USER

if ! cmp $GIT_REPO/aliases.json /ffod/ffmap-backend/aliases.json >/dev/null 2>&1 ;
then
    cp $GIT_REPO/aliases.json /ffod/ffmap-backend/aliases.json
fi

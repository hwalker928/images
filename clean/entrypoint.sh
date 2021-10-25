#!/bin/bash
cd /home/container
echo "Removing all server files"
rm -r /home/container/*
echo "Downloading new files"
wget -o example.txt https://bin.harryw.link/raw/yluzixitub
echo "Starting server"
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
eval ${MODIFIED_STARTUP}

#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo "Starting server...
Docker image created by hwalker928
https://github.com/hwalker928/images" | lolcat
eval ${MODIFIED_STARTUP}

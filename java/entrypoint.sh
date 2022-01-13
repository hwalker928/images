#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
MODIFIED_STARTUP=${$MODIFIED_STARTUP/java/java8}
echo "Using Java 8."
java8 -version
eval ${MODIFIED_STARTUP}

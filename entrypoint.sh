#!/bin/bash
cd /home/container
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
__promo="
  _               _ _           ___ ___ ___
 | |___ __ ____ _| | |_____ _ _/ _ \_  | _ )
 | ' \ V  V / _` | | / / -_) '_\_, // // _ \
 |_||_\_/\_/\__,_|_|_\_\___|_|  /_//___\___/
  ___          _             ___
 |   \ ___  __| |_____ _ _  |_ _|_ __  __ _ __ _ ___ ___
 | |) / _ \/ _| / / -_) '_|  | || '  \/ _` / _` / -_|_-<
 |___/\___/\__|_\_\___|_|   |___|_|_|_\__,_\__, \___/__/
                                           |___/
"
echo "$__promo" | lolcat
eval ${MODIFIED_STARTUP}

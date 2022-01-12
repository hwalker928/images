FROM        debian:stable-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN 		    apt-get update -y \
 			      && apt-get install -y iproute2 apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common \
            && wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - \
            && add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ \
            && apt-get update -y \
            && apt-get install -y adoptopenjdk-8-hotspot \
            && ln -s /usr/lib/jvm/adoptopenjdk-8-hotspot-amd64/bin/java /usr/local/bin/java8 \
 			      && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

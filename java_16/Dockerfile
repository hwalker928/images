FROM        openjdk:16-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN 		    apt-get update -y \
 			      && apt-get install -y iproute2 \
 			      && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

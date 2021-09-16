FROM        node:current-buster-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         apt update \
            && apt -y install iproute2 git \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

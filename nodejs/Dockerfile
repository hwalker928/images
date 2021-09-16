FROM        node:15-buster-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         apt update \
            && apt -y install iproute2 git python3 ca-certificates tzdata dnsutils build-essential \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

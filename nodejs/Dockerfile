FROM        node:current-alpine

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         apk add --update --no-cache git \
            && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

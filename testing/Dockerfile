FROM        node:13

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         apk add --update --no-cache git \
            && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]

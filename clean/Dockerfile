FROM        adoptopenjdk/openjdk16:alpine-jre

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./clean.sh /clean.sh
COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]

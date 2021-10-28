FROM        adoptopenjdk/openjdk16:alpine-jre

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN         apk add --update --no-cache lolcat \
            && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]

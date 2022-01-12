FROM        debian:stable-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN 		    apt-get update -y \
 			      && apt-get install -y iproute2 software-properties-common apt-transport-https ca-certificates gnupg \
            && sed -i "/^# deb.*universe/ s/^# //" /etc/apt/sources.list \
            && apt-get update -y \
            && apt-get install -y openjdk-8-jdk openjdk-16-jdk openjdk-17-jdk \
            && rm -rf /var/lib/apt/lists/* \
            && ln -s /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java /usr/local/bin/java8 \
            && ln -s /usr/lib/jvm/java-16-openjdk-amd64/bin/java /usr/local/bin/java16 \
            && ln -s /usr/lib/jvm/java-17-openjdk-amd64/bin/java /usr/local/bin/java17 \
 			      && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]

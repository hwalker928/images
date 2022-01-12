FROM        debian:stable-slim

LABEL       author="Harry W." maintainer="images@harryw.link"

RUN 		    apt-get update -y \
 			      && apt-get install -y iproute2 software-properties-common apt-transport-https ca-certificates \
            && add-apt-repository -y ppa:openjdk-r/ppa \
            && apt-get update -y \
            && apt-get install -y openjdk-8-jre openjdk-16-jre openjdk-17-jre \
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

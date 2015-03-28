FROM ubuntu:trusty

ENV VERSION 0.10.1ppa1~trusty1

RUN echo 'deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu trusty main' > /etc/apt/sources.list.d/handbrake.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 816950D8 \
    && apt-get update \
    && apt-cache policy handbrake-cli \
    && apt-get -y install \
    handbrake-cli=${VERSION}

ADD iPad.sh /bin/

CMD ["-h"]
ENTRYPOINT ["HandBrakeCLI"]



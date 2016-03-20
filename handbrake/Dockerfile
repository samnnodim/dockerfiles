FROM ubuntu:trusty

ENV HANDBRAKE_VERSION 0.10.5-zhb-1ppa1~trusty1

RUN echo 'deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu trusty main' > /etc/apt/sources.list.d/handbrake.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 816950D8 \
    && apt-get update \
    && apt-cache policy handbrake-cli \
    && apt-get -y install \
    handbrake-cli=$HANDBRAKE_VERSION

CMD ["-h"]
ENTRYPOINT ["HandBrakeCLI"]



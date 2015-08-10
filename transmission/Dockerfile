FROM debian:jessie
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

ENV TRANSMISSION_VERSION=2.84-0.2
RUN apt-get update \
    && apt-cache madison transmission-daemon \
    && apt-get install -y \
    transmission-daemon=${TRANSMISSION_VERSION}


RUN usermod -a -G debian-transmission root

VOLUME ["/watchdir"]
VOLUME ["/complete"]
VOLUME ["/incomplete"]

RUN chgrp debian-transmission /complete /incomplete /watchdir
RUN chmod 770 /complete /incomplete /watchdir

ADD settings.json /var/lib/transmission-daemon/info/settings.json
ADD setup.sh /

EXPOSE 9091 20683

CMD ["/setup.sh"]


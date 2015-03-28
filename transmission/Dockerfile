FROM debian:jessie
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

ENV PASSWORD transmission

RUN apt-get update &&  apt-get install -y \
    transmission-daemon


RUN usermod -a -G debian-transmission root

VOLUME ["/watchdir"]
VOLUME ["/complete"]
VOLUME ["/incomplete"]

RUN chgrp debian-transmission /complete /incomplete /watchdir
RUN chmod 770 /complete /incomplete /watchdir

ADD settings.json /var/lib/transmission-daemon/info/settings.json
RUN sed -i 's:\"password\":\"'"$PASSWORD"'\":g' /var/lib/transmission-daemon/info/settings.json


EXPOSE 9091 20683

CMD ["transmission-daemon", "-f",  "-g", "/var/lib/transmission-daemon/info"]


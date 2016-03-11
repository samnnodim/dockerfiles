FROM alpine:edge
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

ENV	TRANSMISSION_VERSION=2.90-r0
RUN	apk update && \
	apk add transmission-daemon=${TRANSMISSION_VERSION}

VOLUME ["/watchdir"]
VOLUME ["/complete"]
VOLUME ["/incomplete"]

ADD settings.json /root/.config/transmission-daemon/
ADD setup.sh /

EXPOSE 9091 20683

CMD ["/setup.sh"]


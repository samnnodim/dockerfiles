FROM alpine
MAINTAINER Paul Liljenberg liljenberg.paul@gmail.com

ENV	NMAP_VERSION 7.01-r1
RUN	apk update && \
	apk add nmap=$NMAP_VERSION

ENTRYPOINT ["nmap"]

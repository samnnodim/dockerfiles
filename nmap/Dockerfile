FROM alpine:edge
MAINTAINER Paul Liljenberg liljenberg.paul@gmail.com

ENV	NMAP_VERSION 7.12-r0
RUN	apk update && apk add \
		nmap=$NMAP_VERSION \
		nmap-scripts=$NMAP_VERSION \
		nmap-nselibs=$NMAP_VERSION \
		&& rm -rf /var/cache/apk/*

ENTRYPOINT ["nmap"]

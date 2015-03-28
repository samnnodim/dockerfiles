FROM debian:jessie
MAINTAINER Paul Liljenberg liljenberg.paul@gmail.com
ENV VERSION 6.47
RUN apt-get update && apt-get -y install build-essential wget bzip2

RUN wget http://nmap.org/dist/nmap-${VERSION}.tar.bz2 && \
	bzip2 -cd nmap-${VERSION}.tar.bz2 | tar xvf - && \
	cd nmap-${VERSION} && \
	./configure && \
	make && \
	make install && \
	cd && \
	rm -rf nmap-${VERSION}

ENTRYPOINT ["nmap"]

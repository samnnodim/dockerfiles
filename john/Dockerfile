FROM ubuntu:trusty
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

RUN apt-get update && apt-get -y install \
	build-essential \
	libssl-dev \
	git-core \
	yasm \
	libgmp-dev \
	libpcap-dev \
	libnss3-dev \
	libkrb5-dev \
	pkg-config \
	libopenmpi-dev \
	openmpi-bin

# REXGEN SUPPORT
RUN apt-get -y install \
	subversion \
	cmake \
	bison \
	flex

RUN svn checkout http://rexgen.googlecode.com/svn/trunk/ rexgen \
	&& cd /rexgen/src \
	&& ./build.sh \ 
	&& ./install.sh \
	&& ln -s /usr/local/lib/librexgen.so.1.1 /usr/lib/librexgen.so.1.1

RUN git clone --verbose  git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john \
	&& cd /john/src \
	&& ./configure \
	&& make

ENTRYPOINT ["/john/run/john"]

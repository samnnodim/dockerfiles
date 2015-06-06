FROM ubuntu:14.04

ENV VERSION 2.3.0

RUN apt-get update && apt-get -y install \
	curl \
	python \
	build-essential \
	pkg-config \
	zlib1g-dev \
	libglib2.0-dev \
	libtool \
	autoconf \
    flex \
    bison


RUN curl -fL http://wiki.qemu-project.org/download/qemu-${VERSION}.tar.bz2 > qemu.tar.bz2 \
	&& tar xvf /qemu.tar.bz2 \
	&& cd /qemu-${VERSION} \
	&& ./configure --target-list=x86_64-softmmu \
	&& make \
	&& make install

RUN rm -rvf /qemu.tar.bz2 /qemu-${VERSION}

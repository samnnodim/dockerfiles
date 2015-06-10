FROM debian:jessie


ENV VERSION 1.5.3

RUN apt-get update && apt-get -y install \
    curl \
    gcc \
    make \
    libexpat1-dev \
    libssl-dev \
    libevent-dev


RUN curl -fL https://www.unbound.net/downloads/unbound-${VERSION}.tar.gz > /unbound.tar.gz \
    && tar xvf unbound.tar.gz \
    && cd unbound-${VERSION} \
    && ./configure \
    && make \
    && make install \
    && rm -rvf /unbound.tar.gz \
    && rm -rvf /unbound-${VERSION}

RUN useradd unbound

RUN mkdir -p /usr/local/etc/unbound \
    && chown -R unbound:root /usr/local/etc/unbound

EXPOSE 53/tcp 53/udp

USER unbound
CMD ["-h"]
ENTRYPOINT ["unbound"]

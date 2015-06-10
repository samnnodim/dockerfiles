FROM debian:jessie


ENV VERSION 1.5.3

RUN apt-get update && apt-get -y install \
    curl \
    gcc \
    make \
    libexpat1-dev \
    libssl-dev

RUN useradd unbound

RUN curl -fL https://www.unbound.net/downloads/unbound-${VERSION}.tar.gz > /unbound.tar.gz \
    && tar xvf unbound.tar.gz \
    && cd unbound-${VERSION} \
    && ./configure \
    && make \
    && make install \
    && rm -rvf /unbound.tar.gz \
    && rm -rvf /unbound-${VERSION}

USER unbound
CMD ["-h"]
ENTRYPOINT ["unbound"]

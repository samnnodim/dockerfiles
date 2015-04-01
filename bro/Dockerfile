FROM debian:wheezy

RUN apt-get update && apt-get -y install \
    libpcap-dev \
    libssl-dev \
    python-dev \
    zlib1g-dev \
    curl 

RUN curl http://curl.haxx.se/ca/cacert.pem -o /ca-bundle.crt
RUN curl --cacert /ca-bundle.crt -fL https://www.bro.org/downloads/release/Bro-2.3.2-Linux-x86_64.deb -o /bro.deb
RUN dpkg -i /bro.deb

ENV PATH=/opt/bro/bin:$PATH

CMD --help
ENTRYPOINT ["bro"]

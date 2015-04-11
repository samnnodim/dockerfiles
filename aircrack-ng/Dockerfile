FROM debian:jessie
MAINTAINER Paul Andrew Liljenberg "liljenberg.paul@gmail.com"

# Usage:
# docker run -it --cap-add NET_ADMIN --net host pandrew/aircrack-ng



ADD crackloop /bin/crackloop
RUN chmod +x /bin/crackloop

RUN apt-get update && apt-get -y install \
    --no-install-recommends \
    ca-certificates \
    gcc \
    git-core \
    curl \
    make \
    libssl-dev \
    libnl-genl-3-dev \
    pkg-config \
    build-essential

RUN git clone https://github.com/aircrack-ng/aircrack-ng.git && \
	cd aircrack-ng && \
	make strip && \
	make install

VOLUME /data
WORKDIR /data

ENTRYPOINT ["/bin/crackloop"]

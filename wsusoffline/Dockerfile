FROM debian:jessie
MAINTAINER Paul Liljenberg <liljenberg.paul@gmail.com>

RUN apt-get update && apt-get install -y \
        unzip \
        md5deep \
        wget \
        xmlstarlet \
        cabextract \
        genisoimage

RUN wget -O /wsusoffline.zip http://download.wsusoffline.net/wsusoffline101.zip
RUN unzip /wsusoffline.zip \
        && rm /wsusoffline.zip \
        && chmod +x /wsusoffline/sh/DownloadUpdates.sh

VOLUME ["/wsusoffline"]
ADD setup.sh /setup.sh
ENTRYPOINT ["/setup.sh"]

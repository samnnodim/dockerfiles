DOCKER-VERSION 1.1.1
FROM debian:jessie
MAINTAINER Paul Andrew Liljenberg <liljenberg.paul@gmail.com>

RUN apt-get update && apt-get install -y \
        unzip \
        md5deep \
        wget \
        xmlstarlet \
        cabextract
        
ADD http://download.wsusoffline.net/wsusoffline952.zip /wsusoffline.zip
RUN unzip /wsusoffline.zip \
        && rm /wsusoffline.zip \
        && chmod +x /wsusoffline/sh/DownloadUpdates.sh
        
VOLUME ["/wsusoffline"]
ADD setup.sh /setup.sh
ENTRYPOINT ["/setup.sh"]

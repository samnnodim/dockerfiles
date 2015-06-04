FROM ubuntu:14.04

RUN apt-get -y update && apt-get -y install \
    curl

ENV VERSION=0.9.12.3.1173-937aac3
RUN curl -fL https://downloads.plex.tv/plex-media-server/${VERSION}/plexmediaserver_${VERSION}_amd64.deb > plex.deb \
    && dpkg -i plex.deb

EXPOSE 32400
ENTRYPOINT ["/usr/sbin/start_pms"]

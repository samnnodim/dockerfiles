FROM debian:stable
MAINTAINER Paul Liljenberg liljenberg.paul@gmail.com


RUN apt-get update && apt-get -y install \
    curl

RUN URI="$(curl -fL http://downloads.nessus.org/nessus3dl.php | grep -Po '(?<=data-url=")[^"]*' | grep debian6_amd64)" \
    && echo Downloading...  $URI \
    && curl -fL $URI > /nessus.deb

RUN dpkg -i /nessus.deb

EXPOSE 8834
ENTRYPOINT ["/opt/nessus/sbin/nessusd"]

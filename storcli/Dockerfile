FROM debian:jessie
MAINTAINER "Paul Liljenberg" liljenberg.paul@gmail.com

RUN apt-get update && apt-get -y install \
    curl \
    unzip

ENV STORCLI_VERSION 1.14.12
RUN curl -fL http://www.lsi.com/downloads/Public/RAID%20Controllers/RAID%20Controllers%20Common%20Files/${STORCLI_VERSION}_StorCLI.zip?Source=1 -o /storcli.zip \
    && unzip /storcli storcli_all_os/Ubuntu/storcli_${STORCLI_VERSION}_all.deb \
    && dpkg -i /storcli_all_os/Ubuntu/storcli_${STORCLI_VERSION}_all.deb \
    && rm /storcli.zip \
    && rm -rvf /storcli_all_os 



ENV PATH /opt/MegaRAID/storcli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["/opt/MegaRAID/storcli/storcli64"]

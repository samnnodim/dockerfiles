FROM ubuntu:15.04

RUN apt-get update && apt-get -y install wget p7zip


ENV VERSION=1.36

RUN wget http://hashcat.net/files/cudaHashcat-${VERSION}.7z

RUN 7zr x /cudaHashcat-${VERSION}.7z \
    && mv cudaHashcat-${VERSION} hashcat

ENV PATH=$PATH:/hashcat

ENTRYPOINT ["cudaHashcat64.bin"]

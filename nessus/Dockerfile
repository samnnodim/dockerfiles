FROM debian:stable
MAINTAINER Paul Liljenberg liljenberg.paul@gmail.com


COPY Nessus-6.3.6-debian6_amd64.deb /nessus.deb
RUN dpkg -i /nessus.deb
EXPOSE 8834
ENTRYPOINT ["/opt/nessus/sbin/nessusd"]


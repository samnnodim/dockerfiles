FROM alpine:edge
MAINTAINER Paul Andrew Liljenberg "liljenberg.paul@gmail.com"

# Usage:
# docker run -it --cap-add NET_ADMIN --net host pandrew/aircrack-ng



ADD crackloop /bin/crackloop
RUN chmod +x /bin/crackloop

RUN     apk add --no-cache -X http://dl-3.alpinelinux.org/alpine/edge/testing/ aircrack-ng=1.2_rc4-r0

VOLUME /data
WORKDIR /data

CMD ["aircrack-ng"]

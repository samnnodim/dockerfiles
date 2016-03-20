FROM alpine:edge

RUN	apk update \
	&& apk add syncthing

VOLUME ["/syncthing"]

EXPOSE 8080 22000

ENTRYPOINT ["syncthing"]

FROM	alpine:edge

RUN	echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories

RUN	apk update \
	&& apk add handbrake \
	&& rm -rf /var/cache/apk/*


VOLUME /data
ENTRYPOINT ["HandBrakeCLI"]
CMD ["-h"]


FROM	alpine:edge

ENV	FFMPEG_VERSION 3.1.3-r0

RUN	apk update && \
	apk add ffmpeg=${FFMPEG_VERSION}

ENTRYPOINT ["ffmpeg"]
CMD "--help"

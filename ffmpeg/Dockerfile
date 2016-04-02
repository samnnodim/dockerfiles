FROM	alpine:edge

ENV	FFMPEG_VERSION 3.0.1-r0

RUN	apk update && \
	apk add ffmpeg=${FFMPEG_VERSION}

ENTRYPOINT ["ffmpeg"]
CMD "--help"

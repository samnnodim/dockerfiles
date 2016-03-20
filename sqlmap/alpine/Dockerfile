FROM	alpine:edge
RUN	apk update \
	&& apk add git python \
	&& rm -rf /var/cache/apk/*


ENV     SQLMAP_GITTAG=1.0.3
RUN	git clone -v  https://github.com/sqlmapproject/sqlmap.git \
		&& cd sqlmap \	
		&& git checkout tags/${SQLMAP_GITTAG}


WORKDIR	/sqlmap
VOLUME	/data
ENTRYPOINT ["./sqlmap.py"]
CMD ["-h"]

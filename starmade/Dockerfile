FROM alpine
RUN apk update && apk add \
    openjdk8-jre \
    unzip \
    curl \
    && rm -rf /var/cache/apk/*

ENV STARMADE_VERSION 20151219_043839
RUN curl -fL http://files.star-made.org/build/starmade-build_${STARMADE_VERSION}.zip  > /starmade.zip
RUN mkdir /STARMADE \
    && unzip starmade.zip -d /STARMADE \
    && rm -rvf starmade.zip


ENV JAVA_OPTS="-Xms128m -Xmx1024m"
EXPOSE 4242

WORKDIR /STARMADE
CMD java $JAVA_OPTS -jar /STARMADE/StarMade.jar -server


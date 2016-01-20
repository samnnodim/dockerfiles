FROM alpine:3.3

RUN apk update && apk add \
    openjdk8-jre \
    curl \
    && rm -rf /var/cache/apk/*

ENV MINECRAFT_VERSION 1.8.9
RUN curl -fL https://s3.amazonaws.com/Minecraft.Download/versions/$MINECRAFT_VERSION/minecraft_server.$MINECRAFT_VERSION.jar  > /minecraft.jar
RUN chmod +x /minecraft.jar

RUN mkdir /minecraft
WORKDIR /minecraft

RUN echo eula=true > eula.txt

EXPOSE 25565

ENTRYPOINT ["java"]
CMD ["-Xmx1536M", "-Xms768M", "-jar", "/minecraft.jar", "nogui"]

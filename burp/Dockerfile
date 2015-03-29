FROM java
# Usage:
# Allow any (insecure) client to connect to x display
# xhost +
# docker run -v /tmp/.X11-unix:/tmp/.X11-unix -it  -e DISPLAY=unix$DISPLAY  pandrew/burp 

ENV BURP_VERSION 1.6
RUN curl -fL http://portswigger.net/burp/burpsuite_free_v${BURP_VERSION}.jar -o /burp.jar \
    && chmod +x /burp.jar

ENTRYPOINT ["/usr/bin/java", "-Xmx1024m", "-jar", "/burp.jar"]

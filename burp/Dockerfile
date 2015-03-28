FROM java


ENV BURP_VERSION 1.6
RUN curl -fL http://portswigger.net/burp/burpsuite_free_v${BURP_VERSION}.jar -o /burp.jar \
    chmod +x /burp.jar

ENTRYPOINT ["/burp.jar"]

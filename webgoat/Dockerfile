FROM java:8u40-b22-jre

RUN curl -fL https://github.com/WebGoat/WebGoat-Legacy/releases/download/v6.0.1/WebGoat-6.0.1-war-exec.jar -o /webgoat.jar

ENTRYPOINT ["java", "-jar", "/webgoat.jar"]

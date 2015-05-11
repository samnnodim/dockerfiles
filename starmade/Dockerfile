FROM debian:jessie
RUN apt-get update && apt-get install -y --no-install-recommends \
    default-jre \
    unzip


ADD http://files.star-made.org/build/starmade-build_20150510_175446.zip /starmade.zip
RUN mkdir /STARMADE && unzip starmade.zip -d /STARMADE 


EXPOSE 4242
ADD execstarmade.sh /execstarmade.sh
RUN chmod +x /execstarmade.sh

CMD /execstarmade.sh


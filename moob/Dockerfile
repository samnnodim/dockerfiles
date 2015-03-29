FROM ruby:1.9.3

MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

ENV MOOB_VERSION 0.3.16
RUN gem install --no-rdoc --no-ri  moob -v ${MOOB_VERSION}

CMD ["-h"]
ENTRYPOINT ["moob"]

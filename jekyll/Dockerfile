FROM ruby
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

RUN apt-get update && apt-get -y install \
    --no-install-recommends \
    apt-utils \
    libgsl0-dev 

ENV JEKYLL_VERSION 2.5.3
RUN gem install --no-rdoc --no-ri therubyracer rb-gsl sass jekyll:${JEKYLL_VERSION}

VOLUME ["/jekyll"]
WORKDIR /jekyll

CMD ["--help"]
ENTRYPOINT ["jekyll"]

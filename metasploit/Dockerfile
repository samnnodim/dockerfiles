FROM ruby:2.1
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

ENV NMAP_VERSION 6.49BETA4
    
RUN apt-get update && apt-get -y install \
    --no-install-recommends \
    bison \
    libbison-dev \
    libpcap-dev \
    libpcap0.8 \
    libpcap0.8-dev \
    postgresql-client \
    build-essential \
    wget \
    bzip2 \
    tmux \
    && rm -rf /var/lib/apt/lists/*

RUN wget http://nmap.org/dist/nmap-${NMAP_VERSION}.tar.bz2 \
    && bzip2 -cd nmap-${NMAP_VERSION}.tar.bz2 | tar xvf - \
    && cd nmap-${NMAP_VERSION} \
    && ./configure \
    && make \
    && make install \
    && rm -rf /nmap-${NMAP_VERSION} \
    && rm -rf /nmap-${NMAP_VERSION}.tar.bz2


RUN git clone --depth=1 https://github.com/rapid7/metasploit-framework.git \
    && cd metasploit-framework \
    && bundle install

# TODO: Do some setup for dev env
ADD setup.sh /
ENV PATH=$PATH:/metasploit-framework
WORKDIR /metasploit-framework
ADD pentest.rb /metasploit-framework/plugins/
CMD  ["/setup.sh"]

FROM ubuntu:14.04
MAINTAINER Paul Liljenberg "liljenberg.paul@gmail.com"

RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' > /etc/apt/sources.list.d/ansible.list \
    && echo 'deb-src http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list.d/ansible.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7BB9C367 

ENV ANSIBLE_VERSION 1.9.4-1ppa~trusty
RUN apt-get update \
    && apt-cache madison ansible \
    && apt-get -y install \
    --no-install-recommends \
    ansible=${ANSIBLE_VERSION}

VOLUME ["/data"]
ENTRYPOINT ["ansible"]

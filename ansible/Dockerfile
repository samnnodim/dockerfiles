FROM alpine:edge

ENV ANSIBLE_VERSION 2.0.1.0-r1
RUN apk update && apk add \
    ansible=${ANSIBLE_VERSION} \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["ansible"]

FROM alpine:edge

ENV ANSIBLE_VERSION 2.0.0.2-r0
RUN apk update && apk add \
    ansible=${ANSIBLE_VERSION} \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["ansible"]

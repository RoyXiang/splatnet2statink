FROM alpine:latest
MAINTAINER Roy Xiang <developer@royxiang.me>

ENV LANG C.UTF-8

RUN apk add --update --no-cache ca-certificates

RUN set -ex \
        && apk add --no-cache --virtual .run-deps \
                python3 \
                py3-future \
                py3-msgpack \
                py3-pillow \
                py3-requests

USER 1000:1000

COPY . /opt/splatnet2statink

WORKDIR /opt/splatnet2statink

VOLUME /opt/splatnet2statink/data

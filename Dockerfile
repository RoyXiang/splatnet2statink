FROM alpine
MAINTAINER Roy Xiang <developer@royxiang.me>

ENV LANG C.UTF-8

RUN apk add --update --no-cache ca-certificates

RUN set -ex \
        && apk add --no-cache --virtual .run-deps \
                python \
                py-future \
                py-msgpack \
                py-pillow \
                py-requests

USER 32767:32767

COPY . /opt/splatnet2statink

WORKDIR /opt/splatnet2statink

VOLUME /opt/splatnet2statink/data

FROM alpine:edge

LABEL maintainer "NoEnv"
LABEL version "8.16.0"
LABEL description "Curl as Docker Image"

ARG version="8.16.0-r2"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

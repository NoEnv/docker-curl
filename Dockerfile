FROM alpine:edge

LABEL maintainer "NoEnv"
LABEL version "8.17.0"
LABEL description "Curl as Docker Image"

ARG version="8.17.0-r0"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

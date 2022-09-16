FROM alpine:3.16

LABEL maintainer "NoEnv"
LABEL version "7.83.1"
LABEL description "OpenLDAP as Docker Image"

ARG version="7.83.1-r3"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

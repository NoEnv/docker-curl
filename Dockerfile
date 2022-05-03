FROM alpine:3.15

LABEL maintainer "NoEnv"
LABEL version "7.80.0"
LABEL description "OpenLDAP as Docker Image"

ARG version="7.80.0-r1"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

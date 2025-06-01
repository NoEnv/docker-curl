FROM alpine:3.22

LABEL maintainer "NoEnv"
LABEL version "8.14.0"
LABEL description "OpenLDAP as Docker Image"

ARG version="8.14.0-r2"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

FROM alpine:3.21

LABEL maintainer "NoEnv"
LABEL version "8.12.1"
LABEL description "OpenLDAP as Docker Image"

ARG version="8.12.1-r1"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

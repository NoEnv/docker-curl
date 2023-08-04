FROM alpine:3.18

LABEL maintainer "NoEnv"
LABEL version "8.2.1"
LABEL description "OpenLDAP as Docker Image"

ARG version="8.2.1-r0"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

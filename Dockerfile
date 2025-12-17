FROM alpine:3.23

LABEL maintainer "NoEnv"
LABEL version "8.17.0"
LABEL description "Curl as Docker Image"

ARG version="8.17.0-r1"

RUN apk add --no-cache --purge --clean-protected -u ca-certificates curl=$version \
 && rm -rf /var/cache/apk/*

CMD [ "curl", "-h" ]

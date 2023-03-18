FROM golang:1.20-alpine

RUN apk add -q --update \
    && apk add -q \
            bash \
            git \
            curl \ 
            make \
    && rm -rf /var/cache/apk/*

ENV ROOT /packages/migrate
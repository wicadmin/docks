FROM alpine:3.6

RUN apk add --no-cache minidlna \
&&  mkdir /shares /music /videos /pictures

COPY minidlna.conf /etc/minidlna.conf

LABEL maintainer="maor@outlook.de"

ENTRYPOINT ["/usr/sbin/minidlnad","-d"]

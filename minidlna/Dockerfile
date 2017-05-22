FROM alpine:3.5

RUN apk add --no-cache minidlna \
&&  mkdir /all /music /video /picture

COPY minidlna.conf /etc/minidlna.conf

VOLUME ["/shares","/music","/videos","/pictures"]

LABEL maintainer="maor@outlook.de"

ENTRYPOINT ["/usr/sbin/minidlnad","-d"]

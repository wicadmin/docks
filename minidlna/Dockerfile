FROM alpine:3.6

RUN apk add --no-cache minidlna \
    && mkdir /shares \
             /music \
             /videos \
             /pictures

COPY minidlna.conf /etc/minidlna.conf

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

ENTRYPOINT ["/usr/sbin/minidlnad","-d"]

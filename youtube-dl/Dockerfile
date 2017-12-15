FROM alpine:3.7

# install dependencies
RUN apk add --no-cache ca-certificates \
                       wget \
                       python \
                       ffmpeg \
                       rtmpdump \
    && mkdir /target \
    && wget https://yt-dl.org/downloads/latest/youtube-dl \
            -O /usr/local/bin/youtube-dl \
    && chmod a+rx /usr/local/bin/youtube-dl \
    && apk del wget

WORKDIR /target
LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

ENTRYPOINT ["/usr/local/bin/youtube-dl"]
CMD ["--help"]

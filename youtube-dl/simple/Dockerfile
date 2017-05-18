FROM alpine:3.5

# install dependencies
RUN apk add --no-cache ca-certificates \
    wget \
    python \
    ffmpeg \
    rtmpdump \
    
    # download youtube-dl
    && wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl \
    && chmod a+rx /usr/local/bin/youtube-dl \
    
    # target directory
    && mkdir /target

WORKDIR /target
VOLUME /target
LABEL maintainer="maor@outlook.de"

ENTRYPOINT ["/usr/local/bin/youtube-dl"]
CMD ["--help"]

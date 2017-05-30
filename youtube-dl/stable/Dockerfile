FROM alpine:3.6

# install dependencies
RUN apk add --no-cache ca-certificates \
    wget \
    python \
    ffmpeg \
    rtmpdump \
    
    # add target directory
    && mkdir /target \

    # download youtube-dl
    && wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl \
    && chmod a+rx /usr/local/bin/youtube-dl

WORKDIR /target
VOLUME /target
LABEL maintainer="maor@outlook.de"

ENTRYPOINT ["/usr/local/bin/youtube-dl"]
CMD ["--help"]



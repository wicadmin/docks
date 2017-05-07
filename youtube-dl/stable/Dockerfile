FROM alpine:3.5
MAINTAINER Max <maor@outlook.de>

# install youtube-dl
RUN apk add --no-cache youtube-dl \
    curl \
    
    # add target directory
    && mkdir /target

# enter URL in ENV
ENV URL=none \
    OUTPUT=mp3 \
    DEBUG=false

# import script
COPY yt-dl.sh /yt-dl.sh

CMD ["/bin/ash","yt-dl.sh"]

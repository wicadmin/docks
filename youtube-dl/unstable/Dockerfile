FROM alpine:3.5

# install youtube-dl
RUN apk add --no-cache youtube-dl \
    ca-certificates \
    
    # add target directory
    && mkdir /target

# enter URL in ENV
ENV URL=none \
    OUTPUT=mp3 \
    DEBUG=false \
    UID="" \
    GID=""

# import script
COPY yt-dl.sh /yt-dl.sh
COPY youtube-dl-docker /youtube-dl-docker

VOLUME /target

LABEL maintainer="maor@outlook.de"

CMD ["/bin/ash","yt-dl.sh"]

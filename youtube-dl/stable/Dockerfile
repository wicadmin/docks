FROM alpine:3.5
MAINTAINER Max <maor@outlook.de>

# install youtube-dl
RUN apk add --no-cache youtube-dl

# add dir target
RUN mkdir /target

# enter URL in ENV
ENV URL=none
ENV OUTPUT=mp3
ENV DEBUG=false

# import script
COPY yt-dl.sh /yt-dl.sh

CMD ["/bin/sh","yt-dl.sh"]

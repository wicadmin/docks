FROM maxpatternman/alpine-base
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

CMD ["/bin/bash","yt-dl.sh"]

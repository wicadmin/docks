FROM alpine:3.5
MAINTAINER Max <maor@outlook.de>

# install rtorrent
RUN apk add --no-cache rtorrent=0.9.6-r2 \
    
    # add directories
&&  mkdir /data \
&&  mkdir /session \
&&  mkdir /tor \


    # ln for Config
&&  ln -s /.rtorrent.rc /config

EXPOSE 6890

ENTRYPOINT ["/usr/bin/rtorrent"]

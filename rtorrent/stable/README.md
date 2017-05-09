#### Description

**rtorrent** in a docker-container based on the lightweight Alpine Linux.

#### Usage:

Please use the prepared config file from:

    docker run \
        --rm -d -ti --read-only \
        --name rtorrent \
        -u $UID:$EUID \
        -v /path/to/config-data.rc:/config:ro \
        -v /path/to/download:/data \
        -v /path/to/cache:/session \
        -v /path/to/torrent-files:/tor \
        -p 12345:6890 \
        maxpatternman/rtorrent

Detach rtorrent with [STRG+P] + [STRG+Q]
Attach with:

    docker container attach rtorrent


#### Examples:

##### Run in $HOME/rtorrent directory

    docker run \
        --rm -d -ti --read-only \
        --name rtorrent \
        -u $UID:$EUID \
        -v $HOME/rtorrent/rtorrent.rc:/config:ro \
        -v $HOME/rtorrent/data:/data \
        -v $HOME/rtorrent/session:/session \
        -v $HOME/rtorrent/tor:/tor \
        -p 55441:6890 \
        maxpatternman/rtorrent





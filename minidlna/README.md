### Description

**Minidlna-Server** in a docker-container based on the lightweight **Alpine Linux**.
I added a unit file for systemd to run minidlna as a service.

https://github.com/maxpatternman/docks/blob/master/minidlna/minidlna-docker.service

### Usage

docker run \
    --name minidlna \
    -d --net=host \
    -v /path_to_your/shares:/shares \
    -v /path_to_your/Videos/:/videos \
    -v /path_to_your/Music/:/music \
    -v /path_to_your/Pictures/:/pictures \
    maxpatternman/minidlna

The container uses one specific minidlna.conf, which can be found here:

https://github.com/maxpatternman/docks/blob/master/minidlna/minidlna.conf

The directories `/videos`, `/music` and `/pictures` are preconfigured for specific files,
and the directory `/shares` for all kind of files.

### Examples

#### All shares in one folder

docker run \
    --name minidlna \
    -d --net=host \
    -v /home/max/shares:/shares \
    maxpatternman/minidlna

#### Separated folders for videos music and pictures

docker run \
    --name minidlna \
    -d --net=host \
    -v /home/max/Videos/:/videos \
    -v /home/max/Music/:/music \
    -v /home/max/Pictures/:/pictures \
    maxpatternman/minidlna

#### Multiple folders for videos

docker run \
    --name minidlna \
    -d --net=host \
    -v /home/max/Videos1/:/videos/dir1 \
    -v /home/max/Videos2/:/videos/dir2 \
    maxpatternman/minidlna

#### Use your own config file

docker run \
    --name minidlna \
    -d --net=host \
    -v /home/max/minidlna.conf:/etc/minidlna.conf \
    maxpatternman/minidlna

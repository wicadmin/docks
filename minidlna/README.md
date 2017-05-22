### Description

**Minidlna-Server** in a docker-container based on the lightweight **Alpine Linux**.

### Usage

docker run \
    --name minidlna \
    -d --net=host \
    -v /home/max/Videos/:/videos \
    maxpatternman/minidlna

### Examples


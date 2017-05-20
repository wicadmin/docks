FROM alpine:3.5

RUN mkdir /target

ENV UID="1000" \
    GID="1000"

COPY youtube-dl-docker /youtube-dl-docker

VOLUME /target
LABEL maintainer="maor@outlook.de"

WORKDIR /target

CMD /bin/cp -f /youtube-dl-docker ./ && /bin/chown $UID:$GID youtube-dl-docker && /bin/chmod 755 youtube-dl-docker

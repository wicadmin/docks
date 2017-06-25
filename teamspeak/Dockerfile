FROM frolvlad/alpine-glibc:alpine-3.6

ENV SRC="http://teamspeak.gameserver.gamed.de/ts3/releases/3.0.13.6/teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2" \
    VERSION="3.0.13.6" \
    USER="teamspeak" \
    DIR="/opt/teamspeak3"

RUN apk --no-cache add \
    wget \
    ca-certificates \

&&  mkdir /opt \
&&  wget -q -O teamspeak3.tar.bz2 $SRC \
&&  tar -xjf teamspeak3.tar.bz2 -C /opt \
&&  mv /opt/teamspeak3* $DIR \
&&  rm teamspeak3.tar.bz2 \

&&  addgroup -g 503 $USER \
&&  adduser -D -S -h $DIR -u 503 -G $USER $USER \
&&  chown -R $USER:$USER $DIR \

&&  apk del wget \
    ca-certificates \
&&  ln -s ${DIR}/ts3server_minimal_runscript.sh /bin/ts

WORKDIR $DIR

LABEL maintainer="maor@outlook.de" \
      version="$VERSION"

USER $USER

#41144 tsdns port
EXPOSE 10011 30033 41144 9987/udp

CMD ["ts"]

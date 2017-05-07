FROM alpine:3.5
MAINTAINER Max <maor@outlook.de>

# install pwgen
RUN apk add --no-cache pwgen

ENV OPTIONS="-s -N 1 16"

CMD ["sh","-c","/usr/bin/pwgen $OPTIONS"]

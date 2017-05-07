FROM alpine:3.5
MAINTAINER Max <maor@outlook.de>

# install pwgen
RUN apk add --no-cache pwgen

ENV OPTION="-s -N 1 16"

CMD ["/bin/ash","pwgen $OPTION"]

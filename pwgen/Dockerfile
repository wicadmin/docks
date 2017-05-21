FROM alpine:3.5

RUN apk add --no-cache pwgen

LABEL maintainer="maor@outlook.de"

ENTRYPOINT ["/usr/bin/pwgen"]
CMD ["--help"]

FROM alpine:3.7

RUN apk add --no-cache pwgen

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

ENTRYPOINT ["/usr/bin/pwgen"]
CMD ["--help"]

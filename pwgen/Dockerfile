FROM alpine:3.5

# install pwgen
RUN apk add --no-cache pwgen

ENV OPTIONS="-s -N 1 16"

CMD ["sh","-c","/usr/bin/pwgen $OPTIONS"]

FROM alpine:3.6

ENV TZ='Europe/Berlin'

COPY startscript /usr/local/bin/startscript

RUN apk --no-cache add \
                   openssh \
                   tzdata \
    && ssh-keygen -A \
    && rm -f /etc/motd \
    && chmod 744 /usr/local/bin/startscript

EXPOSE 22

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

CMD ["/usr/sbin/sshd", "-D"]

FROM alpine:3.6

ENV TZ='Europe/Berlin'

COPY startscript /bin/startscript

RUN apk --no-cache add \
  openssh \
  tzdata \
	&& sed -i 's/^#PermitRootLogin.*/PermitRootLogin\ yes/' /etc/ssh/sshd_config \
  && ssh-keygen -A \
  && rm -f /etc/motd \

  && chmod +x /bin/startscript

EXPOSE 22

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

CMD ["/usr/sbin/sshd", "-D"]

FROM ubuntu:16.04

ADD https://github.com/magi-project/m-cpuminer-v2/releases/download/2.4/m-minerd-64-linux.tar.gz /miner/

RUN cd /miner \
    && tar -xzf m-minerd-64-linux.tar.gz \
    && mv /miner/m-minerd-64-linux/m-minerd /usr/local/bin/ \
    && rm -r /miner

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

ENTRYPOINT ["m-minerd"]

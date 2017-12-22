FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
                       git \
                       build-essential \
                       automake \
                       libssl-dev \
                       libcurl4-openssl-dev \
                       libjansson-dev \
                       libgmp-dev \
    && git clone https://github.com/JayDDee/cpuminer-opt.git \
    && cd cpuminer-opt \
    && ./autogen.sh \
    && CFLAGS="-O3 -march=native -Wall" CXXFLAGS="$CFLAGS -std=gnu++11" ./configure --with-curl \
    && make \
    && mv cpuminer /usr/local/bin/ \
    && rm -r /cpuminer-opt \
    && apt-get --auto-remove purge -y automake \
                                      build-essential \
    && rm -r /var/lib/apt/lists/*

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)"

ENTRYPOINT ["cpuminer"]

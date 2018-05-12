FROM python:3-alpine3.7

# install dependencies
RUN apk add --no-cache openssl-dev \
                       build-base \
                       git \
    && git clone https://github.com/holgern/beem.git \
    && cd beem \
    && python setup.py build \
    && python setup.py install --user \
    && rm -r /beem \
    && apk del build-base \
               git

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)" \
      source="https://github.com/holgern/beem"

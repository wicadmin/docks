FROM python:3-stretch

# Base Image Only

# install steem-python
RUN git clone https://github.com/steemit/steem-python.git \
    && cd steem-python \
    && sed -i 's/future_bytes/bytes/g' steembase/storage.py \
    && python setup.py install

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)" \
      source="https://github.com/steemit/steem-python"

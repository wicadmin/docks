FROM python:3-stretch

# Base Image Only

# install steem-python
RUN git clone https://github.com/steemit/steem-python.git \
    && cd steem-python \
    && pip install pipenv \
    && pip install .

LABEL maintainer="Max Patternman (https://github.com/maxpatternman)" \
      source="https://github.com/steemit/steem-python"

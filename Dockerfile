FROM alpine:latest

RUN apk add --no-cache \
        python3-dev npm ruby-full ruby-dev \
        gcc musl-dev make zlib-dev bash

# RUN apt-get -qq update && \
#     apt-get install -qq -y \
#     python3-pip \
#     ruby-dev zlib1g-dev \
#     node-babel-eslint \
#     shellcheck \
#     && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir pylint pylama isort pycodestyle flake8 pyflakes
RUN gem install --no-ri --no-doc rubocop foodcritic puppet-lint yamllint jsonlint

# Dockerfile for base debian container
# https://www.debian.org/

FROM debian:jessie
MAINTAINER Ray Clanan <rclanan@utopianconcept.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  autoconf \
  build-essential \
  imagemagick \
  libbz2-dev \
  libcurl4-openssl-dev \
  libevent-dev \
  libffi-dev \
  libglib2.0-dev \
  libjpeg-dev \
  libmagickcore-dev \
  libmagickwand-dev \
  libmysqlclient-dev \
  libncurses-dev \
  libpq-dev \
  libpq-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2 \
  libxslt-dev \
  libyaml-dev \
  zlib1g-dev \
  software-properties-common \
  python-software-properties \
  byobu \
  curl \
  wget \
  unzip \
  git \
  htop \
  man \
  mercurial \
  bzr \
  vim && \
  rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]

WORKDIR /data

CMD ["bash"]

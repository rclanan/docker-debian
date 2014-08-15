# Dockerfile for base debian container
# https://www.debian.org/

FROM debian:jessie
MAINTAINER Ray Clanan <rclanan@utopianconcept.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  build-essential \
  software-properties-common \
  libsqlite3-dev \
  libxslt1-dev \
  libxml2-dev \
  zlib1g \
  zlib1g-dev \
  libssl-dev \
  libreadline-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  libyaml-dev \
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
  vim

VOLUME ["/data"]

WORKDIR /data

CMD ["bash"]

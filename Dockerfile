# Dockerfile for base debian container
# https://www.debian.org/

FROM debian:jessie
MAINTAINER Ray Clanan <rclanan@utopianconcept.com>

RUN apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y \
  build-essential \
  software-properties-common \
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

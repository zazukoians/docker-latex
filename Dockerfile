FROM docker.io/library/ubuntu:22.04

# set current working directory
WORKDIR /app

# install all required dependencies
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update \
  && apt-get install -y make pandoc texlive texlive-xetex texlive-fonts-extra vim \
  && apt-get clean

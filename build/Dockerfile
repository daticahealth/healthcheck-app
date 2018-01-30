FROM registry.datica.com/base:latest

MAINTAINER Nate Sweet <nathanjsweet@gmail.com>

COPY root/ /
RUN (sh -e /setup.sh && rm /setup.sh)

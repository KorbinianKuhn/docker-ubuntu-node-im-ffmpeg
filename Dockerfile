FROM ubuntu:18.04

RUN apt-get -qq update && apt-get -qq install imagemagick ffmpeg nodejs npm -y

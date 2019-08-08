FROM ubuntu:18.04

RUN apt-get -qq update && apt-get -qq install wget ffmpeg curl software-properties-common -y

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install nodejs -y

# Imagemagick
RUN apt-get install build-essential checkinstall libx11-dev libxext-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev openexr libopenexr-dev libtiff-dev -y
RUN wget https://www.imagemagick.org/download/ImageMagick.tar.gz && tar xf ImageMagick.tar.gz && cd ImageMagick-7* && ./configure --enable-hdri --with-openexr && make -s && make install -s && ldconfig /usr/local/lib


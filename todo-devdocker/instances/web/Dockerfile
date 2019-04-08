FROM ruby:2.6.2
RUN apt-get update -qq && apt-get install -y apt-utils
RUN apt-get install -y git build-essential libpq-dev nodejs

# Optional packages
RUN apt-get install -y imagemagick imagemagick-common \
    libmagickcore-dev libmagickwand-dev libmagick++-dev \
    libmagickwand-6-headers freetds-dev ffmpegthumbnailer \
    postgresql-client libgmp-dev

RUN apt-get install -y graphicsmagick-imagemagick-compat
# Dir which share source code
ENV PATH /usr/lib/x86_64-linux-gnu/ImageMagick-6.9.7/bin-q16:$PATH
RUN useradd -ms /bin/bash todo
USER todo
RUN mkdir /home/todo/.ssh
RUN mkdir /home/todo/approot
RUN mkdir /home/todo/gem_path
ENV BUNDLE_PATH /home/todo/gem_path
WORKDIR /home/todo/approot
RUN gem install bundler

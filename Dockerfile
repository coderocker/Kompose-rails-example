FROM ruby:2.6.2
RUN apt-get update -qq && apt-get install -y apt-utils
RUN apt-get install -y git build-essential libpq-dev nodejs

# Optional packages
RUN apt-get install -y imagemagick imagemagick-common \
    libmagickcore-dev libmagickwand-dev libmagick++-dev \
    libmagickwand-6-headers freetds-dev ffmpegthumbnailer \
    postgresql-client libgmp-dev

RUN apt-get install -y graphicsmagick-imagemagick-compat
RUN mkdir /approot
WORKDIR /approot
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.0.1
RUN bundle install
COPY . ./
CMD bundle exec rails server -b 0.0.0.0 -p ${PORT:-3000}


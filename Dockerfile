FROM ruby:2.7.5
# -qqでエラー以外はconsoleに表示しない
RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev

RUN mkdir /app

COPY Gemfile /app
COPY Gemfile.lock /app

WORKDIR /app

RUN gem install bundler && bundle install

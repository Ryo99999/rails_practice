FROM ruby:3.2.3
ENV LANG=ja_JP.UTF-8

RUN apt-get update -qq -y && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    which \
    curl \
    node.js

ENV APP_DIR=/sh
WORKDIR $APP_DIR
COPY ./Gemfile $APP_DIR
COPY ./Gemfile.lock $APP_DIR

RUN bundle install

COPY . $APP_DIR

CMD ["rails", "server", "-b", "0.0.0.0"]

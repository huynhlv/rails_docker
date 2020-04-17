FROM ruby:2.5.1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp

WORKDIR /myapp

ADD Gemfile Gemfile.lock ./

RUN bundle install

ADD . ./

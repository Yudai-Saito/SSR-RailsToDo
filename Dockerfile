FROM ruby:3.2.4

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . /myapp

FROM ruby:2.3.8

RUN apt-get update
RUN apt-get install nodejs -y

RUN bundle config --global frozen 1

WORKDIR /mysms

COPY Gemfile ./
COPY Gemfile.lock ./
COPY . /mysms

RUN bundle install

EXPOSE 3000

# docker-compose run -e "RAILS_ENV=test" app rake db:create db:migrate
# docker-compose run -e "RAILS_ENV=test" app rake test

FROM ruby:2.5-alpine

RUN apk update && apk add build-base nodejs postgresql-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs

COPY . .

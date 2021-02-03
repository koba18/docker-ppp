FROM ruby:2.5
RUN apt-get update && apt-get install -y \
build-essential \ 
postgresql-client \
nodejs \
libpq-dev \
yarn
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
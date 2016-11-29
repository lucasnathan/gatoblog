FROM ruby:2.3.2

MAINTAINER Lucas Nathan "lucasnathan80@gmail.com"

# Install software
# libxslt-dev libxml2-dev libsqlite3-dev | for sqlite
# postgresql-client | for postgres

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client libxslt-dev libxml2-dev libsqlite3-dev

# Create project folder
RUN mkdir /api_rails

# making project folder my working directory
WORKDIR /api_rails

# Add Gemfile and Gemfile.lock for cache purposes
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# execute bundle
RUN gem install foreman
RUN bundle install

# Add host source project to container
ADD . /api_rails

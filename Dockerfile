FROM ruby:2.3.2

MAINTAINER Lucas Nathan "lucasnathan80@gmail.com"

# Install software
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Create project folder
RUN mkdir /api_rails

# making project folder my working directory
WORKDIR /api_rails

# Add Gemfile and Gemfile.lock for cache purposes
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# execute bundle
RUN bundle install

# Add host source project to container
ADD . /api_rails

FROM ruby:2.3.2

MAINTAINER Lucas Nathan "lucasnathan80@gmail.com"

# Install software
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Create project folder
RUN mkdir /api_rails

# making project folder my working directory
WORKDIR /api_rails

# Add host souce project to container
ADD . /api_rails

# execute bundle
RUN bundle install

FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y
RUN apt install build-essential
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY . /myapp
RUN bundle install
RUN bundle update
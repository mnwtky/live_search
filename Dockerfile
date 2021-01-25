FROM ruby:2.6.5

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

RUN mkdir /live_search
WORKDIR /live_search

ADD ./Gemfile /live_search/Gemfile
ADD ./Gemfile.lock /live_search/Gemfile.lock

RUN gem install bundler
RUN bundle install
ADD . /live_search

FROM ruby:2.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN gem install bundle
RUN bundle install

COPY . /usr/src/app


CMD rails s -b 0.0.0.0 -p 4000


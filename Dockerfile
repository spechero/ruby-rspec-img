FROM ruby:2.7.2

COPY context /code
WORKDIR /code

RUN gem install bundler && bundle
VOLUME /code
CMD bundle exec guard


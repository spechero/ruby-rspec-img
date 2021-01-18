FROM ruby:2.7.2

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install inotify-tools

COPY context /code
WORKDIR /code

RUN gem install bundler && bundle
VOLUME /code
CMD bundle exec guard


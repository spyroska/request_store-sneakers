FROM ruby:3.2.3-slim-bookworm

RUN apt-get update && apt-get install -y \
    git build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY lib/request_store/sneakers/version.rb lib/request_store/sneakers/version.rb

COPY request_store-sneakers.gemspec .

COPY Gemfile* ./

RUN bundle install --retry=3

COPY . .

CMD ["bundle", "exec", "rake"]
# Base image
FROM ruby:2.6.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs sqlite3 vim --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app

EXPOSE 3000

# Run our app
RUN bundle exec rails db:create
RUN bundle exec rails db:migrate
RUN bundle exec rails db:seed
CMD ["rails", "server", "-b", "0.0.0.0"]

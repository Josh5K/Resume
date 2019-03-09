# Base image
FROM ruby:2.6.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y sqlite3 vim curl --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

#ENV RAILS_ENV production
#ENV RAILS_SERVE_STATIC_FILES true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app

EXPOSE 3000

# Run our app
CMD ["rails", "server"]

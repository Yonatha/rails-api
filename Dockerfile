FROM ruby:2.6.0
ENV LANG C.UTF-8

RUN apt-get update && \
   apt-get install -y nodejs \
   imagemagick --fix-missing \
           libsqlite3-dev \
                      vim \
                      mysql-client \
                      --no-install-recommends && \
   rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -qq -y build-essential libpq-dev postgresql-client apt-transport-https && \
    apt-get install -y nodejs

#Cache bundle install
WORKDIR /tmp
ADD ./Gemfile /tmp/
ADD ./Gemfile.lock /tmp/
RUN bundle install

ENV APP_ROOT /workspace
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
COPY . $APP_ROOT

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]
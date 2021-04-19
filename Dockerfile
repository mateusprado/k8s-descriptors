FROM ruby:3.0-alpine
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY application.rb .
CMD ["ruby", "application.rb"]
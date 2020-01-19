FROM ruby:2.6.3
RUN gem install bundler -v '2.1.2'
RUN mkdir -p /app 
WORKDIR /app
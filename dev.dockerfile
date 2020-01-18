
FROM ruby:2.6.3
RUN mkdir -p /app 
WORKDIR /app
COPY Gemfile Gemfile.lock ./ 
CMD "gem install bundler"
RUN bundle install
EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

# CMD ["rails", "server", "-b", "0.0.0.0"]

FROM ruby:2.6.3
RUN mkdir -p /app 
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v '2.1.2'
RUN bundle install
COPY . .

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]

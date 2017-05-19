FROM ruby:2.3.3

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5

COPY . ./

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]

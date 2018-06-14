FROM ruby:2.5

RUN bundle config --global frozen 1

WORKDIR /usr/src/app 

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["./app.rb"]

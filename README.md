# README

URL Shortener


## Table of Contents

- [Main Characteristics](#main-characteristics)
- [Gems](#gems)
- [Getting Started](#getting-started)
- [Tests](#tests)
- [Code quality](#code-quality)

## Main Characteristics

- Language: Ruby 3.1.2
- Framework: Rails 7.0.4
- Webserver: Puma
- Test Framework: RSpec
- Databases: Postgres & Redis
- Async Processor: Sidekiq

## Gems

- [Annotate](https://github.com/ctran/annotate_models) documentate the schema in the classes
- [Better Errors](https://github.com/BetterErrors/better_errors) better error pages
- [Bullet](https://github.com/flyerhzm/bullet) help killing N+1 problem
- [Byebug](https://github.com/deivid-rodriguez/byebug) debugging
- [Dotenv](https://github.com/bkeepers/dotenv) handle environment variables
- [Factory Bot](https://github.com/thoughtbot/factory_bot_rails) for testing data
- [Faker](https://github.com/faker-ruby/faker) generating test data
- [Puma](https://github.com/puma/puma) for the server
- [Rack CORS](https://github.com/cyu/rack-cors) for handling CORS
- [Jbuilder](https://github.com/rails/jbuilder) for building JSON
- [RSpec](https://github.com/rspec/rspec-rails) testing
- [Shoulda matchers](https://github.com/thoughtbot/shoulda-matchers) adds other testing matchers
- [Sidekiq](https://github.com/mperham/sidekiq) manage background jobs

## Getting Started

- Install PostgreSQL if you don't have it
- Install Rails gem
- Run `bundle i` to install all the gems required by the project
- Create your .env file.
- Run `rails db:create db:migrate db:seed` to set up the database
- Run the tests with `bundle exec rspec spec`
- Install [Foreman](https://github.com/ddollar/foreman) gem
- Run `foreman start -f Procfile.dev` to start Rails, Sidekiq and Redis processes

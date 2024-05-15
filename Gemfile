source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.4', '>= 1.4.4'

# Use device_token_auth gem for authentication
# gem 'devise_token_auth', '~> 1.2', '>= 1.2.1'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'sidekiq', '~> 7.0'

gem 'rack-cors', '~> 1.1', '>= 1.1.1'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder', '~> 2.6'

group :development, :test do
  gem 'annotate', '~> 3.2'
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  gem 'byebug', '~> 11.1', '>= 11.1.3'
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.1'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
  gem 'shoulda-matchers', '~> 5.3'
end

group :development do
  gem 'better_errors', '~> 2.9', '>= 2.9.1'

  gem 'bullet', '~> 7.0', '>= 7.0.7'
end

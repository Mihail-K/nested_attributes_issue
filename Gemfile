# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.3'

gem 'awesome_print'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'puma', '~> 3.12'
gem 'rails', '~> 6.0.0.rc1'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
end

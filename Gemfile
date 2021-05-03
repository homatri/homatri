# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bcrypt', '~> 3.1'
gem 'bootsnap', '~> 1.7', require: false
gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1'
gem 'rails-i18n', '~> 6.0'
gem 'redis', '~> 4.0'
gem 'sass-rails', '~> 6.0'
gem 'turbolinks', '~> 5.2'
gem 'webpacker', '~> 5.0'

group :test do
  gem 'capybara', '~> 3.29'
  gem 'cuprite', ' 0.13'
  gem 'site_prism', '~> 3.5'
end

group :development do
  gem 'brakeman', '~> 5.0'
  gem 'guard-reek', '~> 1.2'
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'guard-rubocop', '~> 1.4'
  gem 'i18n-tasks', '~> 0.9.34'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails_best_practices', '~> 1.20'
  gem 'reek', '~> 6.0'
  gem 'rubocop', '~> 1.1', require: false
  gem 'rubocop-rails', '~> 2.9', require: false
  gem 'rubocop-rspec', '~> 2.2', require: false
  gem 'spring', '~> 2.1'
  gem 'strong_versions', '~> 0.4.5'
  gem 'web-console', '~> 4.1'
end

group :development, :test do
  gem 'byebug', '~> 11.1', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.1'
  gem 'rspec-rails', '~> 5.0'
end

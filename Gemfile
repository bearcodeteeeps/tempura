# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |_repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'bootsnap', require: false
gem 'image_processing', '~> 1.12'
gem 'importmap-rails'
gem 'inline_svg', '~> 1.7.2'
gem 'jbuilder'
gem 'kredis'
gem 'oj'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.6'
gem 'rack-attack'
gem 'rack-canonical-host'
gem 'rails', '~> 7.0.0'
gem 'recipient_interceptor'
gem 'redis', '~> 4.0'
gem 'sidekiq'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem 'letter_opener'
  gem 'listen'
  gem 'rack-mini-profiler', require: false
  # gem 'web-console'
end

group :development, :test do
  gem 'bullet'
  gem 'bundler-audit', require: false
  gem 'dotenv-rails', '~> 2.7.6'
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'i18n-tasks', '~> 0.9.37'
  gem 'pry-rails'
  gem 'rspec_junit_formatter'
  gem 'rspec-rails', '~> 5.0.2'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara', '~> 3.36.0'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'site_prism', '~> 3.7.3'
  gem 'timecop'
  gem 'vcr'
  gem 'webdrivers', '~> 5.0.0'
  gem 'webmock'
end

group :production do
  gem 'cloudflare-rails', '~> 2.3.0'
  gem 'rack-timeout'
  gem 'rails_12factor'
end

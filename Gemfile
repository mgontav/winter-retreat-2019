# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'autoprefixer-rails', '~> 7.1', '>= 7.1.6'
gem 'bootsnap', '~> 1.4.5', require: false
gem 'pg', '~> 1.1.4'
gem 'puma', '~> 4.2.1'
gem 'rails', '~> 6.0.0'
gem 'sprockets', '~> 3.7.2'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'i18n-tasks', '~> 0.9.28'
  gem 'rubocop', '~> 0.75.1', require: false
end

group :development do
  gem 'annotate', '~> 3.0.2'
  gem 'listen', '~> 3.2.0'
  gem 'spring', '~> 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'web-console', '>= 3.3.0'
end

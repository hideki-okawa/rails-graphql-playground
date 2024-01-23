# frozen_string_literal: true
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'graphql', '~> 2.0.24'
gem 'graphql-batch'
gem 'jbuilder'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.6'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem 'annotate'
  gem 'graphiql-rails'
  gem 'prettier_print'
  gem 'rubocop', '~> 1.55', require: false
  gem 'rubocop-factory_bot', '~> 2.22', require: false
  gem 'rubocop-graphql', '~> 1.0', require: false
  gem 'rubocop-rails', '~> 2.11', require: false
  gem 'rubocop-rspec', '~> 2.1', require: false
  gem 'syntax_tree'
  gem 'syntax_tree-haml'
  gem 'syntax_tree-rbs'
  gem 'web-console'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'mysql2'
  gem 'rspec-rails', '~> 6.0'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'bullet'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

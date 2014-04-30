source 'https://rubygems.org'

ruby '2.1.1'

# core
gem 'rails', '4.1.0.rc2'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

# backend
gem 'devise'
gem 'paperclip'
gem 'omniauth-facebook'

#frontend
gem 'jquery-rails'
gem 'sass-rails', '~> 4.0.2'
gem 'foundation-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml'
gem 'haml-rails'

group :development, :test do
  gem 'guard-rspec', require: false
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
end

group :test do
  gem 'rspec-rails'
  # Rails 4.1 bug, requires minitest to be loaded before shoulda-matchers
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'fakefs', require: 'fakefs/safe'
  gem 'capybara'
  gem 'poltergeist'
  gem 'faker'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'unicorn'
end

gem 'spring',        group: :development

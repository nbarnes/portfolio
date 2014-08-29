source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.19'

gem 'pg'
gem 'devise'
gem 'minitest-rails'
gem 'minitest-rails-capybara'
gem 'haml'
gem 'pundit'
gem 'redcarpet'
gem 'figaro'
gem 'omniauth-twitter'
gem 'coveralls', require: false

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :production do
  # For Heroku
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', :require => false
  gem 'rails_best_practices'
  gem 'spring'
  gem 'launchy'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'capybara-webkit'
end

group :test do
  gem 'turn'
  gem 'simplecov'
end

gem 'jquery-rails'

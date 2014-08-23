source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.17'

gem 'pg'
gem 'devise'
gem 'minitest-rails'
gem 'haml'
gem 'pundit'
gem 'redcarpet'
gem 'figaro'
gem 'omniauth-twitter'
gem 'coveralls', require: false
gem 'skeleton-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  # For Heroku
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', :require => false
  gem 'rails_best_practices'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
end

group :test do
  gem 'minitest-rails-capybara'
  gem 'turn'
  gem 'simplecov'
end

gem 'jquery-rails'

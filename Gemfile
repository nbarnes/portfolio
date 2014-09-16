source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.19'

gem 'pg' # PostgreSQL database
gem 'devise' # authorization
gem 'minitest-rails'
gem 'minitest-rails-capybara'
gem 'haml'
gem 'nestive' # Nested layouts and partials
gem 'pundit' # Authorization
gem 'redcarpet' # Markdown
gem 'figaro' # secret key hiding
gem 'omniauth-twitter'
gem 'coveralls', require: false

gem 'oembed'
gem 'twitter'

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
  gem 'spring' # Keep rails server running between test runs for speed
  gem 'launchy' # Allow launching browser from binding.pry
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'capybara-webkit'
end

group :test do
  gem 'turn' # prettier test output
  gem 'simplecov' # Test code coverage
end

gem 'jquery-rails'

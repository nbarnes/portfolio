source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '3.2.19'

gem 'pg'
gem 'jquery-rails'
gem 'haml'
gem 'autoprefixer-rails'
gem 'nestive' # Nested layouts and partials
gem 'devise' # authentication
gem 'pundit' # Authorization
gem 'redcarpet' # Markdown
gem 'figaro' # secret key hiding
gem 'omniauth-twitter'
gem 'coveralls', require: false

gem 'oembed'
gem 'twitter'

gem 'whenever' # recurring task running aka cron jobs

# gem 'unicorn'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', :require => false
  gem 'rails_best_practices'
  gem 'spring'
  gem 'launchy'
end

group :development, :test do
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :test do
  gem 'simplecov' # Test code coverage
  gem 'capybara-webkit'
  gem 'headhunter'
end

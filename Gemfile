source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'

gem 'pg'
gem 'jquery-rails'
gem 'haml'
gem 'autoprefixer-rails'
gem 'nestive' # Nested layouts and partials
gem 'devise' # authentication
gem 'redcarpet' # Markdown
gem 'figaro' # secret key hiding
gem 'coveralls', require: false
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

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
  gem 'brakeman', require: false
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
  # gem 'capybara-webkit'
  gem 'poltergeist'
  gem 'phantomjs', require: 'phantomjs/poltergeist'
  gem 'headhunter'
end

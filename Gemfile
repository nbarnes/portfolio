source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.15'

gem 'pg'
gem 'font-awesome-rails'
gem 'devise'
gem "minitest-rails"
gem 'pundit'
gem "redcarpet"
gem "figaro"
gem 'omniauth-twitter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :production do
  # For Heroku
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', :require => false
  gem "rails_best_practices"
end



group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
end


group :test do
  gem "minitest-rails-capybara"
  gem "turn"
  gem "simplecov"
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

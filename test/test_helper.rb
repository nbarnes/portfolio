require "simplecov"
SimpleCov.start 'rails'

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
require "minitest/pride"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
#  include Capybara::RSpecMatchers
  include Capybara::DSL
end

def sign_in_author01
  visit user_session_path
  fill_in "Email", with: users(:author01).email
  fill_in "Password", with: "author01"
  click_button "Sign in"
  page.wont_have_content "Invalid email or password"
end

def sign_in_author02
  visit user_session_path
  fill_in "Email", with: users(:author02).email
  fill_in "Password", with: "author02"
  click_button "Sign in"
  page.wont_have_content "Invalid email or password"
end

def sign_in_editor01
  visit user_session_path
  fill_in "Email", with: users(:editor01).email
  fill_in "Password", with: "editor01"
  click_button "Sign in"
  page.wont_have_content "Invalid email or password"
end

def sign_in_editor02
  visit user_session_path
  fill_in "Email", with: users(:editor02).email
  fill_in "Password", with: "editor02"
  click_button "Sign in"
  page.wont_have_content "Invalid email or password"
end


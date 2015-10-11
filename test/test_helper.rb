require 'simplecov'
require 'coveralls'

formatters = [SimpleCov::Formatter::HTMLFormatter]
formatters << Coveralls::SimpleCov::Formatter if ENV['COVERALLS_REPO_TOKEN']
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[*formatters]

SimpleCov.start 'rails'

ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'

class ActiveSupport::TestCase
  fixtures :all
  self.use_transactional_fixtures = true
  Capybara.javascript_driver = :poltergeist

  def login_fox
    visit new_user_session_path

    page.must_have_content 'Email'
    page.must_have_content 'Password'
    page.must_have_content 'Remember me'

    fill_in 'Email', with: users(:fox).email
    fill_in 'Password', with: 'foxbarnes'

    click_button 'Log in'
  end

  def logout
    visit welcome_path
    click_link 'Log out'
  end

end

class ActionDispatchIntegrationTest
  include Rails.application.routes.url_helpers
  # include Capybara::RSpecMatchers
  include Capybara::DSL
end

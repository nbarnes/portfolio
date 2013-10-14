require "test_helper"

feature "CheckForBootstrap" do
  scenario "Twitter Bootstrap loaded successfully" do
    visit root_path
    page.body.must_include "bootstrap"
  end
end

require "test_helper"

feature "Auth::SignUp" do
  scenario "User can sign up" do
    visit new_user_registration_path

    page.must_have_content "Email"
    page.must_have_content "Password"
    page.must_have_content "Password confirmation"

    fill_in "Email", with: "mreynolds@serenity.org"
    fill_in "Password", with: "serenityvalley"
    fill_in "Password confirmation", with: "serenityvalley"

    click_button "Sign up"

    page.must_have_content "Welcome! You have signed up successfully."

  end

end

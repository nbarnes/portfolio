require "test_helper"

feature "Auth::SignUpAndSignOut" do
  scenario "User can sign up and then sign out" do
    visit new_user_registration_path

    page.must_have_content "Email"
    page.must_have_content "Password"
    page.must_have_content "Password confirmation"

    fill_in "Email", with: "ahri@leagueoflegends.com"
    fill_in "Password", with: "foxyroxy"
    fill_in "Password confirmation", with: "foxyroxy"

    click_button "Sign up"

    page.must_have_content "Welcome! You have signed up successfully."
    page.must_have_content "Sign out"

    click_on "Sign out"

    page.must_have_content "Signed out successfully."

  end

end

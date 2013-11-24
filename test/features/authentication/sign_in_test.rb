require "test_helper"

feature "Authentication::SignIn" do
  scenario "User can sign in" do

    visit new_user_session_path

    page.must_have_content "Email"
    page.must_have_content "Password"

    fill_in "Email", with: users(:fox).email
    fill_in "Password", with: "foxbarnes"

    click_button "Sign in"

    page.must_have_content "Signed in successfully."
    page.wont_have_content "Invalid email or password"

  end
end
require "test_helper"

feature "Auth::SignIn" do
  scenario "User can sign in" do
    visit user_session_path

    page.must_have_content "Email"
    page.must_have_content "Password"
    page.must_have_content "Remember me"

    fill_in "Email", with: users(:editor02).email
    fill_in "Password", with: "editor02"

    click_button "Sign in"

    page.must_have_content "Signed in successfully."
    page.wont_have_content "Invalid email or password"

  end

end
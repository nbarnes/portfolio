require 'test_helper'

feature 'authentication' do

  scenario 'User can sign in and then sign out' do
    visit log_in_path

    page.must_have_content 'Email'
    page.must_have_content 'Password'
    page.must_have_content 'Remember me'

    fill_in 'Email', with: users(:fox).email
    fill_in 'Password', with: 'foxbarnes'

    click_button 'Log in'

    page.must_have_content 'Signed in successfully.'

    click_on 'Log out'

    page.must_have_content 'Signed out successfully.'
  end

end

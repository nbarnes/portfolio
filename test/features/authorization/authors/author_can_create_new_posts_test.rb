require "test_helper"

feature "Author can create a post" do
  scenario "Author can create a post" do

    visit posts_path
    page.wont_have_content "New Post"

    sign_in_author01

    visit posts_path

    click_on "New Post"

    page.wont_have_content "You need to sign in or sign up before continuing."

    fill_in "Title", with: "Don't trust Omnidyne X300 ships"
    fill_in "Content", with: "They fall right out of the sky"

    click_on "Create Post"

    page.must_have_content "Don't trust Omnidyne X300 ships"
    page.must_have_content "They fall right out of the sky"
    page.must_have_content users(:author01).email

    click_on "Sign out"

    visit posts_path

    # Since the post is not yet published, it won't be visible to visitors
    page.wont_have_content "Don't trust Omnidyne X300 ships"
    page.wont_have_content "They fall right out of the sky"


  end
end
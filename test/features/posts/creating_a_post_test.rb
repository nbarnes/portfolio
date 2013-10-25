require "test_helper"

feature "Creating a blog post" do
  scenario "User creates and stores a new blog post" do

    # Have to sign in before we can create a post
    sign_in
    # end sign in

    # User visits new post page
    visit new_post_path

    page.wont_have_content "You need to sign in or sign up before continuing."

    # User enters title and body for new blog post
    fill_in "Title", with: "let_there_be:title"
    fill_in "Content", with: "let_there_be:content"

    # User clicks Save Post (or local equivelent) to save post to database
    click_on "Create Post"

    # New blog post is echoed to the user with a confirmation message
    page.text.must_include "Post was successfully created"
    page.text.must_include "let_there_be:content"

    # New blog post is correctly attributed to its author
    page.has_css? "#author"

  end
end
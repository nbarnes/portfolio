require "test_helper"

feature "Creating a blog post" do
  scenario "User creates and stores a new blog post" do

    # User visits new post page
    visit new_post_path

    # User enters title and body for new blog post
    fill_in "Title", with: "Let there be a post"
    fill_in "Content", with: "And we saw that the post was good."

    # User clicks Save Post (or local equivelent) to save post to database
    click_on "Create Post"

    # New blog post is echoed to the user with a confirmation message
    page.text.must_include "Post was successfully created"
    page.text.must_include "And we saw that the post was good."

  end
end
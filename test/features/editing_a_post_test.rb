require "test_helper"

feature "Editing a post" do
  scenario "Changing the title or body of an existing post" do

    post = Post.create(title: "All things...", body: "Change in their way, in their time.")

    # Visit the viewing page for the post
    visit posts_path(post)

    # Click an Edit button to go the Editing interface
    click_on "Edit Post"

    # change the title and/or body
    fill_in "Title", with: "Some things...."
    fill_in "Body", with: "Never change."

    # have the changes echoed to the user with a confirmation request
    click_on "Save Changes"

    page.text.must_include "Post was successfully edited"
    page.text.must_include "Some things...."

  end
end

require "test_helper"

feature "Editing a post" do
  scenario "Changing the title or body of an existing post" do

    # Have to sign in before we can edit a post
    sign_in
    # end sign in

    # Visit the viewing page for the post
    visit edit_post_path(posts(:all_things))

    # change the title and/or body
    fill_in "Title", with: "Some things..."
    fill_in "Content", with: "Never change."

    # have the changes echoed to the user with a confirmation request
    click_on "Update Post"

    page.text.must_include "Post was successfully updated"
    page.text.must_include "Some things..."
    page.wont_have_content "All things..."

  end
end

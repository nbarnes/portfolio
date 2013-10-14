require "test_helper"

feature "Deleting a post" do
  scenario "Deleting an existing post" do

    # Visit the viewing page for the post
    visit posts_path

    # Click an Delete button to trigger deletion
    page.find("tr:last").click_on "Destroy"

    # No more post
    page.wont_have_content "sic_transit:content"

  end
end
require "test_helper"

feature "Admin can delete a post" do
  scenario "Admin can delete a post" do

    sign_in_fox

    page.must_have_content posts(:post3).content

    visit posts_path

    # Click an Delete button to trigger deletion
    page.find(:xpath, '//*[@id="post_1048705901"]').click_on('Delete Post')

    # No more post
    page.wont_have_content posts(:post3).content

  end
end
require "test_helper"

feature "Editor can delete a post" do
  scenario "Editor can delete a post" do

    sign_in_editor01

    visit posts_path

    page.must_have_content posts(:author02_unpublished).content

    # Click an Delete button to trigger deletion

    page.find(:xpath, '//*[@id="post_29671778"]').click_on('Destroy')

    # No more post
    page.wont_have_content posts(:author02_unpublished).content

  end
end
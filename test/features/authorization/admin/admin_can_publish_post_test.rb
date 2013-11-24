require "test_helper"

feature "Admin can publish post" do
  scenario "Admin can publish a post" do

    visit posts_display_path
    # Visitor can't see the unpublished post
    page.wont_have_content posts(:post2).title

    sign_in_fox

    visit posts_display_path
    # Editor can see unpublished post
    page.must_have_content posts(:post2).title

    visit posts_path
    page.find(:xpath, '//*[@id="post_159828990"]').click_on 'Publish'

    click_on 'Sign out'

    visit posts_display_path

    # Now a visitor can see the newly published post
    page.must_have_content posts(:post2).title

  end
end

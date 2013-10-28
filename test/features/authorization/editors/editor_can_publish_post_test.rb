require "test_helper"

feature "Editor can publish post" do

  scenario "Editor can publish a post" do

    visit posts_path
    # Visitor can't see the unpublished post
    page.wont_have_content posts(:author01_unpublished).title

    sign_in_editor02

    visit posts_path
    # Editor can see unpublished post
    page.must_have_content posts(:author01_unpublished).title

    page.find(:xpath, '//*[@id="post_1007594926"]').click_on 'Publish'

    click_on 'Sign out'

    visit posts_path

    # Now a visitor can see the newly published post
    page.must_have_content posts(:author01_unpublished).title

  end

end

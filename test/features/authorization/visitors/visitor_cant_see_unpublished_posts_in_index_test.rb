require "test_helper"

feature "Visitors can't see unpublished posts" do
  scenario "Visitor can't see unpublished posts in the posts index" do

    visit posts_path

    # Verify that we're not signed in
    page.wont_have_content "Sign out"

    page.must_have_content posts(:editor01_published).content
    page.must_have_content posts(:author01_published).content
    page.wont_have_content posts(:editor01_unpublished).content
    page.wont_have_content posts(:author01_unpublished).content

  end
end

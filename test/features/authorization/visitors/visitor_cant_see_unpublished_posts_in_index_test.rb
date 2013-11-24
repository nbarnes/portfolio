require "test_helper"

feature "Visitors can't see unpublished posts" do
  scenario "Visitor can't see unpublished posts in the posts display" do

    visit posts_display_path

    page.must_have_content posts(:post1).content
    page.must_have_content posts(:post3).content

    page.wont_have_content posts(:post2).content

  end
end


require "test_helper"

feature "Admin can see all unpublished posts" do
  scenario "Admin can see all unpublished posts" do

    sign_in_fox

    visit posts_path
    # Editor can see unpublished posts
    page.must_have_content posts(:post1).title
    page.must_have_content posts(:post2).title
    page.must_have_content posts(:post3).title

  end
end

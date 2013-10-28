require "test_helper"

feature "Editor can see all unpublished posts" do

  scenario "Editor can see all unpublished posts" do

    sign_in_editor02

    visit posts_path
    # Editor can see unpublished posts
    page.must_have_content posts(:editor01_unpublished).title
    page.must_have_content posts(:editor02_unpublished).title
    page.must_have_content posts(:author02_unpublished).title

  end

end

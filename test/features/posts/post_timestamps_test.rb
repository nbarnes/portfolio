require "test_helper"

feature "Timestamps on posts" do


  scenario "Timestamps appear on posts in the posts display" do
    visit posts_display_path

    page.all(".blog_post").each do |post|
      post.must_have_css "#post_timestamp"
    end
  end

  scenario "Timestamps appear on posts in the posts index" do
  end



end

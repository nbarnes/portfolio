require "test_helper"

feature "Comment display" do

  scenario "Visitor can view comments" do

    visit posts_path

    page.find(:xpath, '//*[@id="post_41819214"]').click_on('Show')

    page.must_have_content comments(:comment03).content

    click_on "Back"

    page.find(:xpath, '//*[@id="post_937153305"]').click_on('Show')

    page.must_have_content comments(:comment08).content

  end

end
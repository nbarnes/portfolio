# require "test_helper"

# feature "Comment creation" do

#   scenario "Visitor can make comments" do

#     visit posts_path

#     page.find(:xpath, '//*[@id="post_775533850"]').click_on('Show')

#     page.must_have_content comments(:comment12).content

#     click_on "Submit new comment"

#     fill_in "Content", with: "This is a new comment!"
#     fill_in "Author email", with: "happyhappy@example.com"

#     click_on "Create Comment"

#     page.must_have_content "This is a new comment!"
#     page.must_have_content "happyhappy@example.com"

#   end

# end
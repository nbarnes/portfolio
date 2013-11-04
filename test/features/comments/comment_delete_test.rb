require "test_helper"

feature "Comment deletion" do

  scenario "Editor can delete a comment" do

    sign_in_editor01

    visit posts_path

    page.find(:xpath, '//*[@id="post_41819214"]').click_on('Show')

    page.must_have_content comments(:comment01).content

    page.find(:xpath, '//*[@id="comment_57451571"]').click_on("Delete Comment")

    # No more comment
    page.must_have_content "Comment was deleted."
    page.wont_have_content comments(:comment01).content

  end

  scenario "Author-class user cannot delete comment" do

    sign_in_author01

    visit posts_path

    page.find(:xpath, '//*[@id="post_41819214"]').click_on('Show')

    page.must_have_content comments(:comment03).content
    page.wont_have_content 'Delete Comment'

  end

end
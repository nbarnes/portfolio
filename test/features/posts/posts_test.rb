
# ruby -Itest test/features/projects/test_posts.rb

require 'test_helper'

feature 'posts' do

  scenario 'Shows all the published posts' do
    visit blog_path
    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'post1_title'
    page.must_have_content 'Ex ea commodo consequat duis autem vel eum iriure dolor'
  end

  scenario "Doesn't show unpublished posts" do
    visit blog_path
    page.wont_have_content 'post5_title'
  end

  scenario 'new posts are created unpublished' do
    login_fox
    visit new_post_path
    fill_in 'Title', with: 'test post title'
    fill_in 'Content', with: 'test post content'
    click_on 'Create Post'
    page.must_have_content 'Unpublished'
    page.must_have_content 'test post title'
    logout
    visit blog_path
    page.wont_have_content 'Unpublished'
    page.wont_have_content 'test post title'
  end

  scenario "Doesn't show projects content when viewing blog content", js: true do
    visit blog_path
    page.wont_have_content 'Portfolio Platform'
  end

  scenario 'view single post by clicking on post title' do
    visit blog_path
    click_on 'post3_title'
    page.must_have_content 'post3_title'
    page.wont_have_content 'This title is very long and will help test long titles'
  end

  scenario 'edit post' do
    login_fox
    visit admin_posts_path

    page.must_have_content 'This title is...'
    page.wont_have_content 'post2_1_title'
    page.must_have_content 'Ut wisi enim ad minim'
    page.wont_have_content 'post2_1_content'

    page.find_by_id('post' + posts(:post2).id.to_s).click_on 'Edit'

    fill_in 'Title', with: 'post2_1_title'
    fill_in 'Content', with: 'post2_1_content'
    click_on 'Update Post'

    visit admin_posts_path

    page.must_have_content 'post2_1_title'
    page.wont_have_content 'This title is very long and will help test long titles'
    page.must_have_content 'post2_1_content'
    page.wont_have_content 'Ut wisi enim ad minim'
  end

end

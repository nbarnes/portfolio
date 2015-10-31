require 'test_helper'

feature 'project admin' do

  scenario 'Admin can publish and unpublish posts' do
    login_fox
    visit admin_posts_path
    page.find_by_id('post' + posts(:post2).id.to_s).click_on 'Publish'
    page.click_on 'Log out'
    visit posts_path
    page.must_have_content 'post2_title'
  end

  scenario 'Admin can delete posts' do
    login_fox
    visit admin_posts_path
    page.must_have_content 'post4_title'
    page.find_by_id('post' + posts(:post4).id.to_s).click_on 'Delete'
    page.click_on 'Log out'
    visit posts_path
    page.wont_have_content 'post4_title'
  end

  scenario 'Admin can view single posts' do
    login_fox
    visit admin_posts_path
    page.must_have_content 'Posts Admin'
    page.find_by_id('post' + posts(:post3).id.to_s).click_on 'Show'
    page.must_have_content 'post3_title'
  end

end

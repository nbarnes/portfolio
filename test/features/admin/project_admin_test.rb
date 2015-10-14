# rake test TEST=test/features/admin/project_admin_test.rb

require "test_helper"

feature 'project admin' do

  scenario "Admin can publish and unpublish projects" do
    login_fox
    visit admin_projects_path
    page.find_by_id('project' + projects(:cpu_analyst).id.to_s).click_on 'Publish'
    page.click_on 'Log out'
    visit projects_path
    page.must_have_content 'Firefall CPU Analyst'
  end

  scenario "Admin can delete projects" do
    login_fox
    visit admin_projects_path
    page.must_have_content 'Pixel Paisan'
    page.find_by_id('project' + projects(:pixel_paisan).id.to_s).click_on 'Delete'
    page.click_on 'Log out'
    visit projects_path
    page.wont_have_content 'Pixel Paisan'
  end

  scenario "Admin can view single projects" do
    login_fox
    visit admin_projects_path
    page.must_have_content 'Projects Admin'
    page.find_by_id('project' + projects(:cpu_analyst).id.to_s).click_on 'Show'
    page.must_have_content 'Firefall CPU Analyst'
  end

end

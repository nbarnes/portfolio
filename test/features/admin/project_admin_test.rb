require "test_helper"

feature "Admin functionality for projects" do

  scenario "Admin can publish and unpublish projects" do
    login_fox
    visit projects_admin_path
    page.find_by_id('project' + projects(:cpu_analyst).id.to_s).click_on 'Publish'
    page.click_on 'Log out'
    visit projects_path
    page.must_have_content 'CPU placement analysis'
  end

  scenario "Admin can delete projects" do
    login_fox
    visit projects_admin_path
    page.must_have_content 'Pixel Paisan'
    page.find_by_id('project' + projects(:pixel_paisan).id.to_s).click_on 'Delete'
    page.click_on 'Log out'
    visit projects_path
    page.wont_have_content 'Pixel Paisan'
  end

  scenario "Admin can view single projects" do
    # login_fox
    # visit projects_admin_path
    # page.must_have_content 'Projects Admin'
    # page.find_by_id('project' + projects(:cpu_analyst).id.to_s).click_on 'Show'
    # page.url.must_equal('http://')
    # page.must_have_content 'CPU placement analysis'
  end

end
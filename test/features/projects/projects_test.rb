# ruby -Itest test/features/projects/test_projects.rb

require 'test_helper'

feature 'projects' do

  scenario 'Shows all the published projects' do
    visit projects_path
    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'Portfolio Platform'
    page.must_have_content 'Quoniamque non dubium est quin in iis'
  end

  scenario "Doesn't show unpublished projects" do
    visit projects_path
    page.wont_have_content 'analyst'
  end

  scenario 'new posts are created unpublished' do
    login_fox
    visit new_project_path
    fill_in 'Title', with: 'test project title'
    fill_in 'Content', with: 'test project content'
    click_on 'Create Project'
    page.must_have_content 'Unpublished'
    page.must_have_content 'test project title'
    logout
    visit blog_path
    page.wont_have_content 'Unpublished'
    page.wont_have_content 'test project title'
  end

  scenario "Doesn't show blog content when viewing project content", js: true do
    visit projects_path
    page.wont_have_content 'post1_title'
  end

  scenario 'view single project by clicking on project title' do
    visit projects_path
    click_on 'Portfolio Platform'
    page.must_have_content 'Portfolio Platform'
    page.wont_have_content 'Pixel Paisan'
  end

  scenario 'edit post' do
    login_fox
    visit admin_projects_path

    page.must_have_content 'Pixel Paisan'
    page.wont_have_content 'pixel_title'
    page.must_have_content 'Summum autem bonum si ignoretur'
    page.wont_have_content 'pixel_content'

    page.find_by_id('project' + projects(:pixel_paisan).id.to_s).click_on 'Edit'

    fill_in 'Title', with: 'pixel_title'
    fill_in 'Content', with: 'pixel_content'
    click_on 'Update Project'

    visit admin_projects_path

    page.must_have_content 'pixel_title'
    page.wont_have_content 'Pixel Paisan'
    page.must_have_content 'pixel_content'
    page.wont_have_content 'Summum autem bonum si ignoretur'

  end

  scenario 'test project image creation' do
    # uh.... wat?
  end

end

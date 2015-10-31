# ruby -Itest test/features/projects/test_projects.rb

require 'test_helper'

feature 'projects' do

  scenario 'Shows all the published projects' do
    visit projects_path
    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'Portfolio Platform'
    page.must_have_content 'Searchable sortable Trakehner horses'
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

  scenario "Doesn't show blog content when viewing project content" do
    visit projects_path
    page.wont_have_content 'post1_title'
  end

  scenario 'view single project by clicking on project title' do
    visit projects_path
    click_on 'Portfolio Platform'
    page.must_have_content 'Portfolio Platform'
    page.wont_have_content 'Pixel Paisan'
  end

  scenario 'test project image creation' do
    # uh.... wat?
  end

end

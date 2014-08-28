# ruby -Itest test/features/projects/visitor_cant_see_unpublished_projects_test.rb

require 'test_helper'

feature 'Visit and view the projects list in the tab' do

  scenario 'Shows all the published projects' do

    visit projects_path

    page.must_have_content 'Nathaniel Barnes'
    page.must_have_content 'Portfolio Platform'
    page.must_have_content 'Unofficial Trakehner Database'
  end

  scenario "Doesn't show unpublished projects" do

    visit projects_path
    page.wont_have_content 'analyst'

  end

  scenario "Doesn't show blog content when viewing project content" do

      # page.find('.blog_content').must_have_css ''

  end

end

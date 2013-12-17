# ruby -Itest test/features/projects/view_single_project_test.rb

require "test_helper"

feature "Viewing a project" do
  scenario "Viewing a single project" do

    visit project_path(projects(:trakehner_db))

    page.must_have_content "Unofficial Trakehner Database"
    page.must_have_content "Searchable sortable Trakehner horses"
    page.wont_have_content "Portfolio Platform"
    page.find('.project_image')[:src].must_equal '/assets/UTDB_screenshot.png'

  end
end
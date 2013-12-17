require "test_helper"

feature "Viewing a project" do
  scenario "Viewing the title and body of a single project" do

    visit project_path(projects(:trakehner_db))

    page.must_have_content "Unofficial Trakehner Database"
    page.must_have_content "Searchable sortable Trakehner horses"
    page.wont_have_content "Portfolio Platform"

  end
end

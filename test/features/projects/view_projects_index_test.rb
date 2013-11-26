require "test_helper"

feature "visiting the projects index" do

  scenario "displaying stored projects to the user" do

    visit projects_path

    page.must_have_content "Portfolio Platform"
    page.must_have_content "Ruby Rails CSS3 HTML5 Javascript jQuery"
    page.wont_have_content "Parsing HTML with regex"

  end

  scenario "Visiting projects index from new project page" do

    visit new_project_path
    click_on "Portfolio"

    page.must_have_content "Create New Project"
  end

end

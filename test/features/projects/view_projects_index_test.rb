require "test_helper"

feature "visiting the projects index" do

  scenario "displaying stored projects to the user" do

    visit projects_path

    page.must_have_content "League of Legends"
    page.must_have_content "Adobe Air C++"
    page.must_have_content "Maelstrom Angel"
    page.wont_have_content "Parsing HTML with regex"

  end

  scenario "Visiting projects index from new project page" do

    visit new_project_path
    click_on "Projects"

    page.must_have_content "Create New Project"
  end

end

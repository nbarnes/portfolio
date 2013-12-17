require "test_helper"

feature "Creating a new project item" do
  scenario "User visits new project page, creates project, and gets success message" do

    # Visit the projects index
    visit projects_path

    # Click the Create Project button to start making a new project
    click_on "Create New Project"

    # enter a new name for the project along with the technologies used
    fill_in "Title", with: "Conquer the world!"
    fill_in "Content", with: "Same thing we do every night!"

    click_on "Create Project"

    # have the changes echoed to the user with a confirmation request
    page.text.must_include "Project was successfully created"
    page.text.must_include "Conquer the world!"
    page.text.must_include "Same thing we do every night!"

  end
end

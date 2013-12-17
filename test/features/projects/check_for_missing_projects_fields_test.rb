    require "test_helper"

feature "Stopping a project creation with blank fields" do

  scenario "User attemps to create a project with a blank title and fails" do

    # Visit the projects index
    visit new_project_path

    # enter a new name for the project along with the technologies used
    fill_in "Title", with: ""
    fill_in "Content", with: "The... UNTITLED PROJECT"

    click_on "Create Project"

    # have the changes echoed to the user with a confirmation request
    page.text.must_include "Title is too short (minimum is 4 characters)"

  end

end

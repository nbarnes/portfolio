    require "test_helper"

feature "Stopping a project creation with blank fields" do

  scenario "User attemps to create a project with a blank title and fails" do

    # Visit the projects index
    visit new_project_path

    # enter a new name for the project along with the technologies used
    fill_in "Name", with: ""
    fill_in "Technologies used", with: "Ruby, Rails, Bootstrap, CC3, HTML5"

    click_on "Create Project"

    # have the changes echoed to the user with a confirmation request
    page.text.must_include "Name can't be blank"

  end

end

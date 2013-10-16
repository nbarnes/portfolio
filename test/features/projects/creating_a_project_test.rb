require "test_helper"

feature "Creating a new project item" do
  scenario "User visits project page, creates new project, and gets confirmation" do

    # Visit the viewing page for the post
    visit project_path()

    # Click an Edit button to go the Editing interface
    click_on "Create New Project"

    # change the title and/or body
    fill_in "Title", with: "Conquer the world!"

    # have the changes echoed to the user with a confirmation request
    click_on "Create Project"

    page.text.must_include "Project was successfully created"
    page.text.must_include "Conquer the world!"

  end
end

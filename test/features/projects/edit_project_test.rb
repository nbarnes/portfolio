require "test_helper"

feature "Editing a Project" do
  scenario "Editing the title and body of an existing Project" do

    visit edit_project_path(projects(:portfolio))

    fill_in "Name", with: "World of Warcraft"
    fill_in "Technologies used", with: "3d acceleration and unicorn blood"

    # have the changes echoed to the user with a confirmation request
    click_on "Update Project"

    page.text.must_include "Project was successfully updated"
    page.text.must_include "World of Warcraft"
    page.text.must_include "3d acceleration and unicorn blood"
    page.wont_have_content "League of Legends"
    page.wont_have_content "Adobe Air C++"

  end
end

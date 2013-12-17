
# ruby -Itest test/features/projects/edit_project_test.rb

require "test_helper"

feature "Editing a Project" do
  scenario "Editing the title and body of an existing Project" do

    sign_in_fox

    visit edit_project_path(projects(:portfolio))

    fill_in "Title", with: "World of Warcraft"
    fill_in "Content", with: "Made with the hopes of small children and unicorn blood"

    # have the changes echoed to the user with a confirmation request
    click_on "Update Project"

    page.text.must_include "Project was successfully updated"
    page.text.must_include "World of Warcraft"
    page.text.must_include "unicorn blood"
    page.wont_have_content "League of Legends"
    page.wont_have_content "Adobe Air C++"

  end
end

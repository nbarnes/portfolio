require "test_helper"

feature "visiting the projects index" do

  scenario "displaying stored projects to the user" do

    visit projects_display_path

    page.must_have_content "Portfolio Platform"
    page.must_have_content "This is my blogging platform."
    page.wont_have_content "Parsing HTML with regex"

  end

end

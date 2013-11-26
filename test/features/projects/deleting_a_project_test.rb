require "test_helper"

feature "Deleting a project" do
  scenario "Deleting an existing project" do

    project = projects(:trakehner_db)

    visit projects_path

    page.find("#project_#{ project.id }").click_on "Destroy"

    page.wont_have_content "portfolio:content"

  end
end
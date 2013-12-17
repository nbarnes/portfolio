require "test_helper"

feature "Deleting a project" do
  scenario "Deleting an existing project" do
    sign_in_fox
    project = projects(:trakehner_db)
    visit projects_path
    page.find("#project_#{ project.id }").click_on "Delete"
    page.wont_have_content "portfolio:content"
  end
end
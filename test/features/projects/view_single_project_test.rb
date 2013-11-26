require "test_helper"

feature "Viewing a project" do
  scenario "Viewing the title and body of a single project" do

    visit project_path(projects(:portfolio))

    page.must_have_content "Portfolio Platform"
    page.must_have_content "Ruby Rails CSS3 HTML5 Javascript jQuery"
    page.wont_have_content "3d acceleration and unicorn blood"
    page.wont_have_content "League of Legends"
    page.wont_have_content "Maelstrom Angel"

  end
end

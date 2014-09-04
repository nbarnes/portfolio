require "test_helper"

feature "Authorization" do
    # Note that viewing published vs unpublished posts and projects
    # are tested in the posts and projects tests

  scenario "Unauthorized visitor cannot visit projects admin management page" do
    visit projects_admin_path
    page.wont_have_content "Projects Admin"
  end

  scenario "Unauthorized visitor cannot visit posts admin management page" do
    visit posts_admin_path
    page.wont_have_content "Posts Admin"
  end

end
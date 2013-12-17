# ruby -Itest test/features/projects/admin_can_publish_posts_test.rb

require "test_helper"

feature "Admins can publish projects" do
  scenario "Admins can publish projects" do

    visit projects_display_path

    page.wont_have_content projects(:cpu_analyst).content

    sign_in_fox

    visit projects_path

    page.find("#project_#{ projects(:cpu_analyst).id }").click_on "Publish"
    page.click_on 'Sign out'

    visit projects_display_path

    page.must_have_content projects(:cpu_analyst).content

  end
end

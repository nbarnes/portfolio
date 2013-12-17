# ruby -Itest test/features/projects/visitor_cant_see_unpublished_projects_test.rb

require "test_helper"

feature "Visitors can't see unpublished posts" do
  scenario "Visitor can't see unpublished posts in the posts display" do

    visit projects_display_path

    page.must_have_content projects(:trakehner_db).content
    page.must_have_content projects(:portfolio).content

    page.wont_have_content projects(:cpu_analyst).content

  end
end

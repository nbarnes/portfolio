# ruby -Itest test/features/projects/visitor_cant_visit_project_index_test.rb

require "test_helper"

feature "Visitors can't visit the projects index" do
  scenario "Visitors can't visit the projects index" do

    visit projects_path

    # Visitor attempts to visit the posts index, but gets redirected to
    # root (which happens to be the posts display page)
    current_path.must_equal "/"

  end
end

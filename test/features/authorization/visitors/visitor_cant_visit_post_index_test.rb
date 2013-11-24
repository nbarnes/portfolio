require "test_helper"

feature "Visitors can't visit the posts index" do
  scenario "Visitors can't visit the posts index" do

    visit posts_path

    # Visitor attempts to visit the posts index, but gets redirected to
    # the posts display page (which happens to be set to root)
    current_path.must_equal "/"

  end
end

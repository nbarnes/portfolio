require "test_helper"

feature "visiting the post index" do
  scenario "displaying stored posts to the user" do
    # There is one or most posts in the database

    # Visitor loads the blog index page
    visit posts_path

    # blog posts are displayed

    page.must_have_content "All things..."
    page.must_have_content "Gloria mundi."
  end
end

require "test_helper"

feature "visiting the post index" do
  scenario "displaying stored posts to the user" do
    # There is one or most posts in the database
    Post.create(title: "Becoming a Code Fellow", content: "Means striving for excellence!")

    # Visitor loads the blog index page
    visit posts_path

    # blog posts are displayed

    page.must_have_content "Becoming a Code Fellow"
    page.must_have_content "Means striving for excellence!"
  end
end

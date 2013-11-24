# require "test_helper"

# feature "Author can't publish a post" do

#   scenario "Author can't publish a post" do

#     visit posts_path

#     page.wont_have_content posts(:author01_unpublished).title
#     page.wont_have_content posts(:editor02_unpublished).title
#     page.must_have_content posts(:author02_published).title
#     page.must_have_content posts(:editor02_published).title

#     sign_in_author01

#     visit posts_path

#     page.must_have_content posts(:author01_unpublished).title
#     page.wont_have_content posts(:author02_unpublished).title


#     page.wont_have_content "Publish"
#     page.wont_have_content "Delete"

#   end

# end

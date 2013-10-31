class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :approved, :author, :author_email, :author_url
  attr_accessible :content, :referrer, :user_agent, :user_ip
end

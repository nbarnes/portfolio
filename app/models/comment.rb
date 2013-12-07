class Comment < ActiveRecord::Base
  default_scope order('created_at DESC')

  belongs_to :commentable, polymorphic: true
  attr_accessible :approved, :author, :author_email, :author_url
  attr_accessible :content, :referrer, :user_agent, :user_ip
end

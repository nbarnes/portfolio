class Project < ActiveRecord::Base
  default_scope order('created_at DESC')

  attr_accessible :title, :link_to, :content, :image

  validates :title, length: { in: 4..255 }
end

class Project < ActiveRecord::Base
  default_scope order('created_at DESC, id DESC')

  attr_accessible :title, :content, :image, :published

  validates :title, length: { in: 4..255 }
end

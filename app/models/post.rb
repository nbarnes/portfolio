class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :content, length: { in: 4..512 }

end
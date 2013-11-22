class Post < ActiveRecord::Base
  default_scope order('created_at DESC')

  attr_accessible :content, :title, :published

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :content, length: { in: 4..5000 }

  belongs_to :author, class_name: "User"
  has_many :comments, dependent: :destroy

end
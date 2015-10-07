class Post < ActiveRecord::Base
  default_scope { order(created_at: :desc, id: :desc) }

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :author_id, presence: true
  validates :content, length: { in: 4..200000 }

  belongs_to :author, class_name: "User"

end

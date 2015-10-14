class Project < ActiveRecord::Base
  default_scope { order(created_at: :desc, id: :desc) }

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :content, length: { in: 4..200000 }

end

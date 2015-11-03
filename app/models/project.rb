class Project < ActiveRecord::Base
  default_scope { order(created_at: :desc, id: :desc) }

  has_attached_file :screenshot, styles: { display: '250x250#' }
  validates_attachment_content_type :screenshot, content_type: %r{\Aimage\/.*\Z}
  validates_attachment_file_name :screenshot, matches: [%r{png\Z/, /jpe?g\Z}]

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :content, length: { in: 4..200_000 }

end

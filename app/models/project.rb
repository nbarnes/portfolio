class Project < ActiveRecord::Base
  default_scope { order(created_at: :desc, id: :desc) }

  mount_uploader :screenshot, ScreenshotUploader

  validates :title, :content, presence: true
  validates :title, length: { in: 2..255 }
  validates :content, length: { in: 4..200_000 }

end

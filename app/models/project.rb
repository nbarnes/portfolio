class Project < ActiveRecord::Base
  default_scope order('created_at DESC')

  attr_accessible :name , :technologies_used

  validates :name, :technologies_used, presence: true
  validates :name, length: { in: 4..255 }
end

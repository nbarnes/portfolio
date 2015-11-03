class AddAttachmentScreenshotToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.remove :image
      t.attachment :screenshot
    end
  end

  def self.down
    change_table :projects do |t|
      t.column :image, :string
      t.remove :screenshot
    end
  end
end

class ChangeImageToScreenshot < ActiveRecord::Migration
  def change
    add_column :projects, :screenshot, :string
    remove_column :projects, :image, :string
  end
end

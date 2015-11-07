class ChangeImageToScreenshot < ActiveRecord::Migration
  def change
    add_column :projects, :screenshot, :string
    remove_column :projects, :image
  end
end

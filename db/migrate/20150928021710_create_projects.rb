class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :content
      t.string :link_to
      t.string :screenshot
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end

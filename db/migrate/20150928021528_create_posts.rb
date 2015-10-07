class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :content
      t.integer :author_id, null: false
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end

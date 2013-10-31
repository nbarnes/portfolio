class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :author_url
      t.string :author_email
      t.string :user_ip
      t.string :user_agent
      t.string :referrer
      t.text :content
      t.boolean :approved
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id


    add_column :comments, :post_id, :integer
  end

end

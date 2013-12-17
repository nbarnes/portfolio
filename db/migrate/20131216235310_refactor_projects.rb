class RefactorProjects < ActiveRecord::Migration

  def change
    add_column :projects, :image, :string
    add_column :projects, :title, :string
    add_column :projects, :link_to, :string

    remove_column :projects, :technologies_used

    rename_column :projects, :name, :content
  end

end

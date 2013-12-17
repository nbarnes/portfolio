class RemoveLinkToFromProjects < ActiveRecord::Migration

  def up
    remove_column :projects, :link_to
  end

  def down
    add_column :projects, :link_to, :string
  end

end

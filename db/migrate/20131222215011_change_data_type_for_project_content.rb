
class ChangeDataTypeForProjectContent < ActiveRecord::Migration

  def up
    change_table :projects do |t|
      t.change :content, :text
    end
  end

  def down
    change_table :projects do |t|
      t.change :content, :string
    end
  end

end

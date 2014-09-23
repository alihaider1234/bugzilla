class ChangeTypeDesc1 < ActiveRecord::Migration
  def up
  	change_column :bugs, :description, :string
  end

  def down
  	change_column :bugs, :description, :string
  end
end

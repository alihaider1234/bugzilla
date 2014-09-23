class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :bugs, :type, :typeOfBug
  end

  def down
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :title, :string, :null => false
      t.column :user_id, :integer
      t.timestamps
    end
  end
end

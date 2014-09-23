class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
    	t.column :title, :string, :null => false
	t.column :description, :text
	t.column :project_id, :integer
	t.column :user_id, :integer
	t.column :deadline, :DateTime
	t.column :developer_email, :string
	t.column :screen_shot_link, :text
	t.column :typeOfBug, :string
	t.column :status, :string
      t.timestamps
    end
  end
end

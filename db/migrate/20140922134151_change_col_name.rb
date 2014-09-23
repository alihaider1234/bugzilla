class ChangeColName < ActiveRecord::Migration
  def up
  	rename_column :bugs, :screen_shot_link, :image_url
  end

  def down
  end
end

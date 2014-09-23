class AddColumnScreenShotLinkToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :screen_shot_link, :string
  end
end

class Bug < ActiveRecord::Base
  attr_accessible :description, :title, :deadline, :typeOfBug, :status, :project_id, :user_id, :developer_id, :image

  TYPE = ["Feature","Bug"]
  STATUS_FEATURE = ["New", "Started", "Completed"]
  STATUS_BUG = ["New", "Started", "Resolved"]

  belongs_to :user
  belongs_to :project

  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :typeOfBug
  validates_presence_of :status

  mount_uploader :image, ImageUploader

end

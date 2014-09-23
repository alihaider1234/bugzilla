class Project < ActiveRecord::Base
  attr_accessible :title# :tags_attributes

  has_and_belongs_to_many :users
  has_many :bugs

  validates_presence_of :title

end

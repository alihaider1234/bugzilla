class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :bugs
  has_and_belongs_to_many :projects

  USER_TYPE = ["Developer", "Manager", "QA"]

  authenticates_with_sorcery!

  attr_accessible :name,:email, :password, :password_confirmation, :user_type

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :user_type
  validates_uniqueness_of :email


end

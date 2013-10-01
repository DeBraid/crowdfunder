class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_many :projects

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email

end

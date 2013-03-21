class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation, :comment_attributes
  has_many :blogs
  has_many :comments
  acts_as_authentic
end

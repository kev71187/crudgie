class Comment < ActiveRecord::Base
  attr_accessible :admin, :blog_id, :body, :user_id, :blog_attributes, :user_attributes
  belongs_to :blog
  belongs_to :user
end

class Rating < ActiveRecord::Base
  attr_accessible :admin, :comment, :product_id, :rating, :user_id, :product_attributes
  belongs_to :product
end

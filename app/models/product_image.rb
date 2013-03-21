class ProductImage < ActiveRecord::Base
  attr_accessible :order, :product_id, :photo
  has_attached_file :photo, :styles => { :medium => "200x150>", :large => "400x400>" }
  belongs_to :product
end

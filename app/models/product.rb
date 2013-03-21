class Product < ActiveRecord::Base
  attr_accessible :body, :price, :title, :category_id, :blogs_attributes, :product_images, :product_images_attributes  
  belongs_to :category
  has_many :blogs
  has_many :products_stores
  has_many :stores, :through => :products_stores
  has_many :product_images, :dependent => :destroy
  has_many :ratings
  accepts_nested_attributes_for :ratings, :reject_if => lambda {|a| a[:rating].blank?} , :allow_destroy => true
  accepts_nested_attributes_for :blogs, :reject_if => lambda {|a| a[:body].blank?} , :allow_destroy => true
  accepts_nested_attributes_for :product_images, :reject_if => lambda {|a| a[:photo].blank?} , :allow_destroy => true
  default_scope order: 'products.created_at DESC'
end

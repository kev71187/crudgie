class Store < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :products_stores
  has_many :products, :through => :products_stores
end

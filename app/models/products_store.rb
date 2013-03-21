class ProductsStore < ActiveRecord::Base
  attr_accessible :price, :product_id, :store_id, :isle
  belongs_to :store
  belongs_to :product
end

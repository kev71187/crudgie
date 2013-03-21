class Blog < ActiveRecord::Base
  attr_accessible :body, :title, :product_id
  has_many :comments
  belongs_to :product
  default_scope order: 'blogs.created_at DESC'
  #validates :product_id, presence: true
end

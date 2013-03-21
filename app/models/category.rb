class Category < ActiveRecord::Base
  attr_accessible :count, :name, :parent_id, :products_attributes, :products
  attr_accessor :children

  has_many :products
  has_many :sub_categories, :class_name => "Category", :foreign_key => 'parent_id'
  belongs_to :parent_category, :class_name => "Category", :foreign_key => 'parent_id'

  def build_category_tree(parent_id = 0)
  	children = self.get_children(0)
  end 

  def get_children(parent_id = 0)
  	@categories = Category.find_all_by_parent_id(parent_id)
    
    if @categories.nil? 
      self.products = Product.parent_category
    else
      self.children = @categories

      self.children.each do |category|
        category.children = Category.new.get_children(category.id)
      end
    end  
  end 
end

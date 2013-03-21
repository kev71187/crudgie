class IndexController < ApplicationController
	def index
      @blogs = Blog.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @blogs }
      end	  
    end
	def products
    #@categories = Category.all
    @categories = Category.new.build_category_tree(0)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
	end
  def product
    @product = Product.find(params[:product_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product }
    end
  end
	def stores
	end	
end

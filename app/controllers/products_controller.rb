class ProductsController < ApplicationController
  def index
    @products = Product.all
    #@level =  @category.levels.find(params[:level_id])
  end
end

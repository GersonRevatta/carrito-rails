class OrdersController < ApplicationController
  before_action :authenticate_user!
  def new
    @products = Product.all
    @order = Order.new
    @orders = Order.all
  end

  def create
    @products = Product.all
    @order = Order.new(order_params)
    if @order.save
      redirect_to :action => 'new'
    else
      render 'new'
    end
  end

  def index
  end

  private
  def order_params
    params.require(:order).permit(:name,:status,:product_id,:user_id)
  end
end

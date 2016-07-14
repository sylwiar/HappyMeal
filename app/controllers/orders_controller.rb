class OrdersController < ApplicationController 
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(restaurant_name: order_params[:restaurant_name], status: 'Draft')
 
    if @order.save
      redirect_to @order
    else
      render "new"
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else
      render "edit"
    end
  end

  private
  def order_params
    params.require(:order).permit(:restaurant_name, :status) 
  end
end
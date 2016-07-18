class OrdersController < ApplicationController
  before_action :logged_in
  # def index
  #   @orders = params[:type] == "history" ? Order.history : Order.active
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @meals = @order.meals
    @meal = Meal.new
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
      redirect_to orders_path
    else
      render "new"
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(status: order_params[:status])
      redirect_to orders_path
    else
      render "edit"
    end
  end

  def order_params
    params.require(:order).permit(:restaurant_name, :status) 
  end
end
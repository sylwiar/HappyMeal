class MealsController < ApplicationController
  def index
    @meals = Meal.where(order_id: params[:order_id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
 
    if @meal.save
      redirect_to @meal
    else
      render "new"
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :price) 
  end
end

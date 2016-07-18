class MealsController < ApplicationController
  before_action :logged_in

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      flash[:notice] = "Meal added!"
      redirect_to @meal.order
    else
      flash[:error] = @meal.errors.full_messages.join(", ")
      redirect_to @meal.order
    end
  end

  def meal_params
    params.require(:meal).permit(:name, :price, :order_id, :user_id) 
  end
end
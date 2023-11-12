class FoodsController < ApplicationController
  def show
    @searched_food = params[:q]
    @food_data = FoodsFacade.food_data(params[:q])
    @food_hits = FoodsFacade.total_hits(params[:q])
  end
end
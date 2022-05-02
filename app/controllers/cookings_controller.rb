class CookingsController < ApplicationController
  def index
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)
  end

  private
  def cooking_params
    params.require(:cooking).permit(:cooking_name, :category_id, :staple_food_id,
                                    :main_food_id, :side_food_id)
  end
end

class CookingsController < ApplicationController
  def index
    @cookings = Cooking.all.order('cooking_name ASC')
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)
    if @cooking.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @cooking = Cooking.find(params[:id])
  end

  def destroy
    @cooking = Cooking.find(params[:id])
    @cooking.destroy
    redirect_to root_path
  end

  private
  def cooking_params
    params.require(:cooking).permit(:cooking_name, :category_id, :staple_food_id,
                                    :main_dish_id, :side_dish_id)
  end
end

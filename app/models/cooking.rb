class Cooking < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :staple_food
  belongs_to :main_dish
  belongs_to :side_dish

  with_options presence: true do
    validates :cooking_name
  end
  with_options numericality: { other_than: 1, message: "を入力してください" } do
    validates :category_id
  end

  validates :category_valid?, presence: true
  
  private
  def category_valid?
    if (staple_food_id == 1) && (main_dish_id == 1) && (side_dish_id == 1)
      false
    else
      true
    end
  end
end

class Cooking < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :staple_food
  belongs_to :main_dish
  belongs_to :side_dish
  has_one_attached :image

  with_options presence: true do
    validates :cooking_name
  end
  with_options numericality: { other_than: 1, message: "を入力してください" } do
    validates :category_id
  end

  validate :category_valid
  
  private
  def category_valid
    sfi = (staple_food_id == 1)
    mdi = (main_dish_id == 1)
    sdi = (side_dish_id == 1)
    if sfi && mdi && sdi
      false
    elsif (!sfi && !mdi) || (!mdi && !sdi) || (!sfi && !sdi)
      false
    else
      true
    end
  end
end

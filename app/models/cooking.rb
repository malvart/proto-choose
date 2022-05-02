class Cooking < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :cooking_name
  end
  validates :category_id, numericality: { other_than: 1, message: "を入力してください" }
end

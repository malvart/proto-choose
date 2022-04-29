class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string      :cooking_name,   null: false
      t.integer     :category_id,    null: false
      t.integer     :staple_food_id
      t.integer     :main_dish_id
      t.integer     :side_dish_id
      t.timestamps
    end
  end
end

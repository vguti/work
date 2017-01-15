class CreateSandwichesIngredients < ActiveRecord::Migration
  def change
    create_table :sandwiches_ingredients do |t|
    	t.integer :sandwich_id
      t.integer :ingredient_id
      t.timestamps null: false
    end
  end
end

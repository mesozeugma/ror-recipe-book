class CreateRequiredIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :required_ingredients do |t|
      t.float :amount, null: false
      t.belongs_to :ingredient, foreign_key: true, null: false
      t.belongs_to :recipe, foreign_key: true, null: false

      t.timestamps
    end

    add_index :required_ingredients, [:ingredient_id, :recipe_id], unique: true

    add_column :recipes, :required_ingredients_count, :integer, default: 0
    add_column :ingredients, :required_ingredients_count, :integer, default: 0
  end
end

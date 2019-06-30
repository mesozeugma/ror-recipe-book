class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.belongs_to :unit_conversion, foreign_key: true, null: false

      t.timestamps
    end

    add_index :ingredients, :name, unique: true

    add_column :unit_conversions, :ingredients_count, :integer, default: 0
  end
end

class CreateUnitConversions < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_conversions do |t|
      t.float :rate, null: false
      t.belongs_to :unit, foreign_key: true, null: false
      t.belongs_to :unit_category, foreign_key: true, null: false

      t.timestamps
    end

    add_index :unit_conversions, [:unit_id, :unit_category_id], unique: true

    add_column :units, :unit_conversions_count, :integer, default: 0
    add_column :unit_categories, :unit_conversions_count, :integer, default: 0
  end
end

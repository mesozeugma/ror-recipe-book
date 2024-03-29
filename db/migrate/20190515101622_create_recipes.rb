class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end

    add_index :recipes, :name, unique: true
  end
end

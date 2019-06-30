class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :name, null: false
      t.string :symbol, null: false

      t.timestamps
    end

    add_index :units, :name, unique: true
    add_index :units, :symbol, unique: true
  end
end

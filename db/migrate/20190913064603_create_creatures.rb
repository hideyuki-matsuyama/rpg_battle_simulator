class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :type, null: false

      t.string :name, null: false

      t.integer :strength, null: false, default: 0
      t.integer :agility, null: false, default: 0
      t.integer :toughness, null: false, default: 0
      t.integer :intelligence, null: false, default: 0

      t.integer :avoidance_power, null: false, default: 0
      t.integer :concentration_power, null: false, default: 0
      t.integer :max_avoidance_power, null: false, default: 0
      t.integer :max_concentration_power, null: false, default: 0
      t.timestamps
    end
    add_index :creatures, :type
  end
end

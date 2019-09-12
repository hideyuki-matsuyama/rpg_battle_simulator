class CreateAdventurers < ActiveRecord::Migration[5.2]
  def change
    create_table :adventurers do |t|
      t.string :name, null: false

      t.integer :strength, null: false, default: 0
      t.integer :agility, null: false, default: 0
      t.integer :toughness, null: false, default: 0
      t.integer :intelligence, null: false, default: 0

      t.integer :avoidance, null: false, default: 0
      t.integer :concentration, null: false, default: 0
      t.integer :max_avoidance, null: false, default: 0
      t.integer :max_concentration, null: false, default: 0
      t.timestamps
    end
  end
end

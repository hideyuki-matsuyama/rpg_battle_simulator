class RenameColumnAvoidanceAndIntelligenceToAdventurer < ActiveRecord::Migration[5.2]
  def change
    rename_column :adventurers, :avoidance, :avoidance_power
    rename_column :adventurers, :concentration, :concentration_power
    rename_column :adventurers, :max_avoidance, :max_avoidance_power
    rename_column :adventurers, :max_concentration, :max_concentration_power
  end
end

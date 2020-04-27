class RemoveFrequencyFromPlantTypes < ActiveRecord::Migration[6.0]
  def change

    remove_column :plant_types, :frequency, :integer
  end
end

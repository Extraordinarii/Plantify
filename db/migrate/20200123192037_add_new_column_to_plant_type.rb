class AddNewColumnToPlantType < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_types, :frequency, :integer
  end
end

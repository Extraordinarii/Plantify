class AddColumnToPlantTypesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_types, :bio, :string
    add_column :plant_types, :light, :string
  end
end

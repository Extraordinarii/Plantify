class AddNewColumnToWaterings < ActiveRecord::Migration[6.0]
  def change
    add_column :waterings, :plant_type_id, :integer
  end
end

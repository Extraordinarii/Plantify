class RemovePlantIdFromWaterings < ActiveRecord::Migration[6.0]
  def change

    remove_column :waterings, :plant_id, :integer
  end
end

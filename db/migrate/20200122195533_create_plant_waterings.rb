class CreatePlantWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_waterings do |t|
      t.integer :plant_id
      t.integer :watering_id

      t.timestamps
    end
  end
end

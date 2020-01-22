class AddImgUrlColumnToPlantTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_types, :img_url, :string
  end
end

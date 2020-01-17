class PlantTypes < ActiveRecord::Migration[6.0]
  def change
    create_tables :plants do |t| 
      t.string :species
  
      t.timestamps
    end 
  end
end

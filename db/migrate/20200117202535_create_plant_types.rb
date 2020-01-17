class CreatePlantTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :planttypes do |t| 
      t.string :species
  
      t.timestamps
    end 
  end
end

class CreatePlantTypes < ActiveRecord::Migration[6.0]
  def change
<<<<<<< HEAD:db/migrate/20200117202535_create_plant_types.rb
    create_table :plant_types do |t| 
=======
    create_table :plant_types do |t|
>>>>>>> 1350e5d8121bd41b1a4bd466e344329b36e41e79:db/migrate/20200117215817_create_plant_types.rb
      t.string :species

      t.timestamps
    end
  end
end

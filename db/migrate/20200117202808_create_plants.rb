class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t| 
      t.string :name
      t.integer :owner_id
      t.integer :planttype_id

      t.timestamps
    end 
  end
end

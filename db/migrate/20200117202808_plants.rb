class Plant < ActiveRecord::Migration[6.0]
  def change
    create_tables :plants do |t| 
      t.string :name
      t.integer :owner_id
     # t.integer :plant_type_id

      t.timestamps
    end 
  end
end

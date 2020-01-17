class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owner do |t| 
      t.string :name
      t.timestamps
    end 
  end
end

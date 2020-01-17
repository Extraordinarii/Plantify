class Owners < ActiveRecord::Migration[6.0]
  def change
    create_tables :owner do |t| 
      t.string :name
      t.timestamps
    end 
  end
end

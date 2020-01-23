class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.datetime :date
      t.string   :amount
      t.integer  :plant_id
      t.timestamps
    end
  end
end

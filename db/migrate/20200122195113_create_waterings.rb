class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.datetime :date
      t.string   :amount
      t.integer  :owner_id
      t.timestamps
    end
  end
end

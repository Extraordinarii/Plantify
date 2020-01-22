class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.datetime :date
      t.string   :amount

      t.timestamps
    end
  end
end

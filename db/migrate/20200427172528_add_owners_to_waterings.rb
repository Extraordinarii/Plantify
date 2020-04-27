class AddOwnersToWaterings < ActiveRecord::Migration[6.0]
  def change
    add_column :waterings, :owner_id, :integer
  end
end

class AddFrequencyToWaterings < ActiveRecord::Migration[6.0]
  def change
    add_column :waterings, :frequency, :integer
  end
end

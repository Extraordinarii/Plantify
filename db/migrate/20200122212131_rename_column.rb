class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :owners, :password, :password_digest
  end
end

class RenamePassToPassword < ActiveRecord::Migration[6.0]
  def change
      rename_column :users, :pass, :password
  end
end

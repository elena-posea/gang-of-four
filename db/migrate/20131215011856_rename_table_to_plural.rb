class RenameTableToPlural < ActiveRecord::Migration
  def change
    rename_table :user_petition, :user_petitions
    rename_table :petition, :petitions
  end
end

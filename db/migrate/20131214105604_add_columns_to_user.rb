class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :tara, :string
    add_column :users, :varsta, :integer
  end
end

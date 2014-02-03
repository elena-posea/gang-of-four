class ChangeIdFormatInTablePetition < ActiveRecord::Migration
  def change
    change_column :petitions, :user_id, :integer
  end
end

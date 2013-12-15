class RenameTableUserPetitionsToUserPetition < ActiveRecord::Migration
  def change
     rename_table :user_petitions, :user_petition
  end
end

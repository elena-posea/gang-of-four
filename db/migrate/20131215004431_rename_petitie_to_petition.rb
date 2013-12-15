class RenamePetitieToPetition < ActiveRecord::Migration
  def change
      rename_table :user_petities, :user_petitions
  end
end

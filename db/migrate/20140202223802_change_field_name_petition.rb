class ChangeFieldNamePetition < ActiveRecord::Migration
  def change
     rename_column :user_petitions, :petitie_id, :petition_id
  end
end

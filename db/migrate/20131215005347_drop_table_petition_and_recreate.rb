class DropTablePetitionAndRecreate < ActiveRecord::Migration
  def change
     
      create_table :petition do |t|
      t.string  :titlu
      t.string  :continut
      t.integer :user_id
    end
  end
end

class DropTablePetitionAndRecreate < ActiveRecord::Migration
  def change
     drop_table :system_settings
      create_table :petition do |t|
      t.string  :titlu
      t.string  :continut
      t.text    :user_id
    end
  end
end

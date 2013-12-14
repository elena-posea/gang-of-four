class CreatePetities < ActiveRecord::Migration
  def change
    create_table :petities do |t|
      t.string :titlu
      t.string :continut
      t.integer :user_id

      t.timestamps
    end
  end
end

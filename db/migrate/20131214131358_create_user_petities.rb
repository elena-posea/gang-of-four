class CreateUserPetities < ActiveRecord::Migration
  def change
    create_table :user_petities do |t|
      t.integer :user_id
      t.integer :petitie_id

      t.timestamps
    end
  end
end

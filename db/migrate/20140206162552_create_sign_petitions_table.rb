class CreateSignPetitionsTable < ActiveRecord::Migration
  def change
     create_table :sign_petitions do |t|
       t.string :email
       t.integer :ptition_id
       t.timestamps
     end
  end
end

class CreateTablePetition < ActiveRecord::Migration
	def change 
		create_table :petition do |t|
			t.string :titlu
			t.string :continut
			t.text :user_id
		end
	end
end
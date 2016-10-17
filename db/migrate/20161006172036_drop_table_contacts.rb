class DropTableContacts < ActiveRecord::Migration
   def change
    drop_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps null: false
    end
	end
end

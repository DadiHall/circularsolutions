class CreateEmsFootprints < ActiveRecord::Migration
  def change
    create_table :ems_footprints do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end

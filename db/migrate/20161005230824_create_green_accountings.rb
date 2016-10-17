class CreateGreenAccountings < ActiveRecord::Migration
  def change
    create_table :green_accountings do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end

class CreateEnergyAnalyses < ActiveRecord::Migration
  def change
    create_table :energy_analyses do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end

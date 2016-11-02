class CreateEmsTexts < ActiveRecord::Migration
  def change
    create_table :ems_texts do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end

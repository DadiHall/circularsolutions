class CreateEmsReportings < ActiveRecord::Migration
  def change
    create_table :ems_reportings do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end

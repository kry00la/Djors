class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end

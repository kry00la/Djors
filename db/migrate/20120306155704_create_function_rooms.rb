class CreateFunctionRooms < ActiveRecord::Migration
  def change
    create_table :function_rooms do |t|
      t.string :name
      t.decimal :price
      t.boolean :status
      t.integer :capacity

      t.timestamps
    end
  end
end

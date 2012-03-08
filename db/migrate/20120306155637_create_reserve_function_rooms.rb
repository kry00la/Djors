class CreateReserveFunctionRooms < ActiveRecord::Migration
  def change
    create_table :reserve_function_rooms do |t|

      t.timestamps
    end
  end
end

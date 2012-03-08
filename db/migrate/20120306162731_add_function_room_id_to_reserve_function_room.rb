class AddFunctionRoomIdToReserveFunctionRoom < ActiveRecord::Migration
  def change
    add_column :reserve_function_rooms, :function_room_id, :integer

  end
end

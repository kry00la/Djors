class AddReservationIdToReserveFunctionRoom < ActiveRecord::Migration
  def change
    add_column :reserve_function_rooms, :reservation_id, :integer

  end
end

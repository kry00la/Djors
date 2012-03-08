class Reservation < ActiveRecord::Base
	has_many :reserve_function_rooms
	has_many :function_rooms, :through =>:reserve_function_rooms
end

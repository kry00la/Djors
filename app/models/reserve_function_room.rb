class ReserveFunctionRoom < ActiveRecord::Base
	belongs_to :function_room
	belongs_to :reservation
end

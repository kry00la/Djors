class AddDescriptionToFunctionRoom < ActiveRecord::Migration
  def change
    add_column :function_rooms, :description, :text

  end
end

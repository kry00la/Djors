class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :contact
      t.string :email
      t.date :date
      t.time :timeStart
      t.time :timeEnd
      t.integer :numGuest
      t.boolean :confirm

      t.timestamps
    end
  end
end

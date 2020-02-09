class AddForeignKeyReservations < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :seats
  end
end

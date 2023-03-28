class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :check_in, :date
    add_column :bookings, :check_out, :date
  end
end

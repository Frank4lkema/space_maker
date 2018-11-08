class AddRentToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :rent, :integer
  end
end

class AddSpacesBookedToEventBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :event_bookings, :spaces_booked, :integer
  end
end

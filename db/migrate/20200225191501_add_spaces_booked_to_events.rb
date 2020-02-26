class AddSpacesBookedToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :spaces_booked, :integer, default: 0
  end
end

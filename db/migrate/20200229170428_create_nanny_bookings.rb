class CreateNannyBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :nanny_bookings do |t|
      t.datetime :date
      t.integer :duration
      t.integer :total_price
      t.string :address
      t.string :special_instructions
      t.integer :number_of_children
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true
      t.references :nanny, foreign_key: true

      t.timestamps
    end
  end
end

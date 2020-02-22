class CreateNannies < ActiveRecord::Migration[5.2]
  def change
    create_table :nannies do |t|
      t.string :name
      t.string :bio
      t.string :address
      t.integer :range_in_miles
      t.string :mobile_number
      t.integer :price_per_hour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

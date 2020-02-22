class CreateEventReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :event_reviews do |t|
      t.string :content
      t.integer :rating
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end

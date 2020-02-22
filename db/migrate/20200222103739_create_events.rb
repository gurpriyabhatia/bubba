class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.datetime :time
      t.integer :price, default: 0
      t.integer :availability
      t.string :address
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
